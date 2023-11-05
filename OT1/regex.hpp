#pragma once
#include <stack>
#include <string>
#include <vector>
using namespace std;

// 作为Regex的类别
enum TYPE { CHARR,
            CONCAT,
            UNION,
            CLOSURE };

// 正则表达式树的结点
class Regex
{
public:
    // 下列属性不一定都有，没有的置为NULL
    TYPE type;  // 类别
    char c;     // 字符
    Regex *re0; // 左子节点
    Regex *re1; // 右子节点

    Regex(){};
    Regex(TYPE, char, Regex *, Regex *);
    ~Regex();
};

// 构造函数
Regex::Regex(TYPE type, char c, Regex *re0, Regex *re1)
{
    this->type = type;
    this->c = c;
    this->re0 = re0;
    this->re1 = re1;
}

// 析构函数
Regex::~Regex()
{
    if (re0 != NULL) {
        delete re0;
    }
    if (re1 != NULL) {
        delete re1;
    }
}

// str为正则表达式字符串，l和r为左右边界下标
// 该函数处理str中下标为[l,r]的部分，生成语法树，并返回当前子树的根节点
Regex *strToRegex(const char *str, int l, int r)
{
    // 寻找最外层的"|"
    vector<int> unions;
    int level = 0;
    for (int i = l; i < r; i++) {
        if (str[i] == '(') {
            level++;
        } else if (str[i] == ')') {
            level--;
        } else if (str[i] == '|' && level == 0) {
            unions.push_back(i);
        }
    }

    // 处理最外层的'|'，生成语法树
    if (!unions.empty()) {
        int size = unions.size();
        unions.push_back(r);
        Regex *regex = strToRegex(str, l, unions[0]);
        for (int i = 0; i != size; ++i)
            regex = new Regex(UNION, NULL, regex, strToRegex(str, unions[i] + 1, unions[i + 1]));
        return regex;
    }

    // 处理最外层的其他字符
    vector<Regex *> concats;
    // 对最外层按照拼接操作划分正则表达式
    for (int i = l; i < r; i++) {
        if (str[i] == '*') { // 处理"*"号
            Regex *back = concats.back();
            concats.pop_back();
            concats.push_back(new Regex(CLOSURE, NULL, back, NULL));
        } else if (str[i] == '(') { // 处理"("和")"
            int level = 0;
            for (int j = i; j < r; ++j)
                if (str[j] == '(')
                    ++level;
                else if (str[j] == ')' && --level == 0) {
                    concats.push_back(strToRegex(str, i + 1, j));
                    i = j;
                    break;
                }
        } else { // 处理其他字符
            concats.push_back(new Regex(CHARR, str[i], NULL, NULL));
        }
    }

    // 对最外层的拼接生成语法树
    int size = concats.size();
    Regex *regex = concats.front();
    for (int i = 1; i != size; ++i)
        regex = new Regex(CONCAT, NULL, regex, concats[i]);
    return regex;
}