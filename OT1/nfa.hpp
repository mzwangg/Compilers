#pragma once
#include "regex.hpp"
#include <iostream>
#include <map>
#include <vector>
using namespace std;

// NFA节点
class NfaNode
{
public:
    int id;                    // 节点编号
    vector<int> eps_closure;   // 当前节点的eps闭包
    map<char, int> trans_func; // 当前节点的转换函数
    bool accept = false;       // 是否为接受状态

    NfaNode(); // 构造函数
};

// NFA
class Nfa
{
public:
    NfaNode *begin = nullptr;          // 开始节点
    NfaNode *end = nullptr;            // 结束节点
    static vector<NfaNode *> nfaNodes; // 静态变量，存储所有Nfa节点

    Nfa(){};
    Nfa(const Regex *);
};

// 构造函数
NfaNode::NfaNode()
{
    id = Nfa::nfaNodes.size();
    Nfa::nfaNodes.push_back(this);
}

// 构造函数，以正则表达式语法树的根节点作为输入，构造NFA
// 该函数会递归进行构造
Nfa::Nfa(const Regex *regex)
{
    // 先构造左右子树的NFA
    // 当regex为空时相当于调用默认构造函数
    if (regex == NULL) {
        return;
    }
    Nfa nfa0 = Nfa(regex->re0);
    Nfa nfa1 = Nfa(regex->re1);

    // 根据当前语法树节点的类型分别处理，生成对应的NFA
    // 通过trans_func记录节点之间的转移函数
    // 通过eps_closure计算节点的eps闭包
    // 并不断传递accept参数，以识别接受状态
    if (regex->type == CHARR) {
        begin = new NfaNode;
        end = new NfaNode;
        end->accept = true;
        begin->trans_func[regex->c] = end->id;
    } else if (regex->type == CONCAT) {
        begin = nfa0.begin;
        end = nfa1.end;
        nfa0.end->eps_closure.push_back(nfa1.begin->id);
        nfa0.end->accept = false;
    } else if (regex->type == UNION) {
        begin = new NfaNode;
        end = new NfaNode;
        begin->eps_closure.push_back(nfa0.begin->id);
        begin->eps_closure.push_back(nfa1.begin->id);
        nfa0.end->eps_closure.push_back(end->id);
        nfa1.end->eps_closure.push_back(end->id);
        nfa1.end->accept = false;
        nfa0.end->accept = false;
        end->accept = true;
    } else if (regex->type == CLOSURE) {
        begin = new NfaNode;
        end = new NfaNode;
        begin->eps_closure.push_back(end->id);
        begin->eps_closure.push_back(nfa0.begin->id);
        nfa0.end->eps_closure.push_back(end->id);
        nfa0.end->eps_closure.push_back(nfa0.begin->id);
        nfa0.end->accept = false;
        end->accept = true;
    }
}