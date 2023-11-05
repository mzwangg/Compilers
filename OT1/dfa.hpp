#pragma once
#include "nfa.hpp"
#include <list>
#include <map>
#include <queue>
#include <set>
#include <vector>
using namespace std;

class DfaNode
{
public:
    int id;                    // 编号
    set<int> id_set;           // 该DFA节点包含了哪些NFA节点的编号
    map<char, int> trans_func; // 转移函数
    bool accept = false;       // 是否为接受状态

    DfaNode(){};
    DfaNode(set<int> id_set, bool accept);
};

class Dfa
{
public:
    int begin;                         // 开始节点的编号
    set<char> charSet;                 // 字符集
    static vector<DfaNode *> dfaNodes; // 静态变量，存储所有Dfa节点,开始节点为dfaNodes[0]
    Dfa(const Nfa &nfa);
    void simplify();
    void showTransMatrix();
    void test();

private:
    static pair<DfaNode *, bool> makeNode(const set<int> &, bool);
};

DfaNode::DfaNode(set<int> id_set, bool accept)
{
    this->id_set = id_set;
    this->accept = accept;
}

// 用于构建DFA节点
// 输入dfn的id集合和是否是接受状态, 返回构建的dfn结点指针和是否新建结点
pair<DfaNode *, bool> Dfa::makeNode(const set<int> &id_set, bool accept)
{
    // 当该状态已存在时，返回该状态
    int size = dfaNodes.size();
    for (int i = 0; i != size; i++) {
        if (dfaNodes[i]->id_set == id_set) {
            return {dfaNodes[i], false};
        }
    }

    // 当是新状态时，创建DfaNode
    DfaNode *new_node = new DfaNode;
    new_node->id = size;
    new_node->id_set = id_set;
    new_node->accept = accept;
    dfaNodes.push_back(new_node);
    return {new_node, true};
}

// 计算编号为id的DFN节点的eps闭包
// 输入编号id，输出eps闭包集合和是否为终结状态
static pair<set<int>, bool> epsClosure(int id)
{
    // 声明变量
    bool accept = false;
    set<int> new_set;
    queue<int> id_q;

    // 插入求eps闭包的id
    id_q.push(id);
    new_set.insert(id);

    // 求eps闭包
    while (!id_q.empty()) {
        NfaNode *eps_node = Nfa::nfaNodes[id_q.front()];
        id_q.pop();
        accept = accept || eps_node->accept;
        for (int temp_id : eps_node->eps_closure) {
            if (new_set.find(temp_id) == new_set.end()) {
                new_set.insert(temp_id);
                id_q.push(temp_id);
            }
        }
    }

    return {new_set, accept};
}

// 输入NFA，构造DFA
Dfa::Dfa(const Nfa &nfa)
{
    // 根据开始节点的eps闭包生成DFA节点
    pair<set<int>, bool> eps_ret = epsClosure(nfa.begin->id);
    DfaNode *dfnNode = Dfa::makeNode(eps_ret.first, eps_ret.second).first;
    queue<DfaNode *> dfn_q;
    dfn_q.push(dfnNode);

    // 不断循环，直到不再有新状态
    while (!dfn_q.empty()) {
        // 获取队列首元素
        DfaNode *dfnNode = dfn_q.front();
        dfn_q.pop();

        // 获取可导致状态转移的字符集合sigma
        // 集合可去重
        set<char> sigma;
        for (int nfa_id : dfnNode->id_set)
            for (pair<char, int> trans_func : Nfa::nfaNodes[nfa_id]->trans_func)
                sigma.insert(trans_func.first);
        // 在成员变量中记录所有的转移字符
        charSet.insert(sigma.begin(), sigma.end());

        // 构成新的dfnNode
        for (char c : sigma) {
            set<int> id_set;
            bool accept = false;

            // 求出当前DFN节点相对字符c的转移状态集合
            for (int nfa_id : dfnNode->id_set) {
                NfaNode *nfaNode = Nfa::nfaNodes[nfa_id];
                auto found = nfaNode->trans_func.find(c); // 查找对c的转移函数
                if (found != nfaNode->trans_func.end()) { // 如果有对c的转移函数
                    // 求出转移之后的闭包并插入id_set
                    pair<set<int>, bool> eps_ret = epsClosure(found->second);
                    id_set.insert(eps_ret.first.begin(), eps_ret.first.end());
                    // 只要有一个是终结状态那么就是终结状态
                    accept = accept || eps_ret.second;
                }
            }

            // 根据转移状态集合生成DFN节点，如果是新生成的则加入队列，继续求该节点的转移状态
            pair<DfaNode *, bool> ret = Dfa::makeNode(id_set, accept);
            DfaNode *new_dfnNode = ret.first;
            dfnNode->trans_func[c] = new_dfnNode->id;
            if (ret.second) {
                dfn_q.push(new_dfnNode);
            }
        }
    }

    // 将开始节点编号设置为0
    begin = 0;
}

// 进行化简
void Dfa::simplify()
{
    // tempRefs存储原DFA节点到化简状态的映射关系
    auto size = dfaNodes.size();
    vector<DfaNode *> tempRefs(size);

    // 首先将节点分为接受的和非接受的
    // tempSimDfaNodes用于临时存储化简状态
    vector<DfaNode *> tempSimDfaNodes;
    tempSimDfaNodes.reserve(dfaNodes.size());
    // 使用默认构造函数初始化接受和非接受状态
    tempSimDfaNodes.push_back(new DfaNode);
    tempSimDfaNodes.push_back(new DfaNode);
    auto yes = tempSimDfaNodes.begin();
    auto no = ++tempSimDfaNodes.begin();
    (*yes)->accept = true;
    (*no)->accept = false;
    // 根据accept参数将每个节点加入到yes或no，并存储映射关系
    for (int i = 0; i != size; ++i)
        if (dfaNodes[i]->accept) {
            (*yes)->id_set.insert(i);
            tempRefs[i] = *yes;
        } else {
            (*no)->id_set.insert(i);
            tempRefs[i] = *no;
        }
    // 如果没有非接受状态，则删除
    if ((*no)->id_set.empty())
        tempSimDfaNodes.erase(no);

    // 不断尝试切分状态，直到不能切分
    while (true) {
        bool ok = true;
        for (auto iter = tempSimDfaNodes.begin(); iter != tempSimDfaNodes.end();) {
            // Map中map<char, int>表示状态转移的映射，set<int>表示符合该映射的DFN节点id集合
            // Map的size为几，就说明该状态有几个不同的映射，也就能分出几个新状态
            map<map<char, int>, set<int>> Map;
            for (int id : (*iter)->id_set) {
                map<char, int> trans_map;
                for (pair<char, int> trans_func : Dfa::dfaNodes[id]->trans_func)
                    trans_map.insert({trans_func.first, tempRefs[trans_func.second]->id});
                Map[trans_map].insert(id);
            }

            // size为1，说明该状态已不可再分，直接开始下一个状态
            if (Map.size() == 1) {
                ++iter;
                continue;
            }

            //根据Map中的元素新建结点
            for (pair<map<char, int>, set<int>> pair : Map) {
                // 在tempSimDfaNodes中新插入一个状态，并得到该状态的迭代器
                tempSimDfaNodes.push_back(new DfaNode);
                DfaNode *newNode = *(--tempSimDfaNodes.end());

                // 设置节点集合和是否为接受状态属性
                newNode->id_set = pair.second;
                newNode->accept = (*iter)->accept;

                // 更新原始DFN节点到新DFN节点的映射
                for (int id : newNode->id_set)
                    tempRefs[id] = newNode;
            }

            // 如果有某个状态可再分，就会再遍历新状态一次，以分解新状态
            ok = false;
            iter = tempSimDfaNodes.erase(iter);
        }

        // 如果没有任何新状态，则循环终止
        if (ok)
            break;
    }

    // 更新id属性，每个化简之后在状态的id等于其下标
    int newSize = tempSimDfaNodes.size();
    for (int i = 0; i != newSize; ++i) {
        tempSimDfaNodes[i]->id = i;
    }

    // 更新trans_func属性
    // 遍历原始状态，更新其对应新状态的转移函数
    for (int i = 0; i != size; ++i) {
        map<char, int> &trans_func = tempRefs[i]->trans_func;
        for (pair<char, int> kv : dfaNodes[i]->trans_func)
            trans_func.insert({kv.first, tempRefs[kv.second]->id});
    }

    // 更新dfaNodes
    for (DfaNode *item : dfaNodes) {
        delete item;
    }
    dfaNodes.clear();
    swap(dfaNodes, tempSimDfaNodes);

    // 更新开始节点下标
    begin = tempRefs[begin]->id;
}

// 输出转移矩阵
void Dfa::showTransMatrix()
{
    // 输出第一行
    printf("The State Transition Matrix is as Follow:\n\t");
    for (char charr : charSet) {
        printf("%c\t", charr);
    }
    printf("\n");

    for (int i = 0; i < dfaNodes.size(); ++i) {
        DfaNode *dfaNode = dfaNodes[i];
        // 开始状态在之后输出一个^, 接受状态在之后输出一个*
        const char *format = ((i == begin && dfaNode->accept) ? "%d^*\t" : (i == begin ? "%d^\t" : (dfaNode->accept ? "%d*\t" : "%d\t")));
        printf(format, dfaNode->id);
        for (char charr : charSet) {
            auto found = dfaNode->trans_func.find(charr);
            if (found != dfaNode->trans_func.end()) {
                printf(format, dfaNode->trans_func[charr]);
            } else {
                printf("-1\t");
            }
        }
        printf("\n");
    }
}

// 测试函数
void Dfa::test()
{
    printf("\nPlease Enter String to be Determined:\n");
    char str[100];
    while (true) {
        scanf("%s", str);

        // 输入\q时退出
        if (str[0] == '\\' && str[1] == 'q') {
            break;
        }

        // 根据当前字符和当前状态的trans_func进行有限状态机的判断
        DfaNode *nowNode = dfaNodes[begin];
        int i = 0;
        for (; str[i] != '\0'; ++i) {
            auto found = nowNode->trans_func.find(str[i]);
            if (found != nowNode->trans_func.end()) {
                nowNode = dfaNodes[found->second];
            } else {
                printf("False\n");
                break;
            }
        }
        if (str[i] == '\0') {
            printf("True\n");
        }
    }
}