#include "dfa.hpp"
#include "nfa.hpp"
#include "regex.hpp"
#include <fstream>
#include <iostream>
#include <string.h>
#include <vector>
using namespace std;

// 初始化静态成员变量
vector<NfaNode *> Nfa::nfaNodes;
vector<DfaNode *> Dfa::dfaNodes;

int main()
{
    // 输入正则表达式字符串
    char input[100];
    cin >> input;

    // 执行词法分析核心构造算法
    Regex *regex = strToRegex(input, 0, strlen(input)); // 构造正则表达式语法树
    Nfa nfa = Nfa(regex);                               // 构造NFA
    Dfa dfa = Dfa(nfa);                                 // 构造DFA
    dfa.simplify();                                     // 进行化简

    // 进行测试与验证
    dfa.showTransMatrix(); // 输出状态转移矩阵
    dfa.test();            // 进行测试
}