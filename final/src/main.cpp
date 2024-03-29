#include <iostream>
#include <string.h>
#include <unistd.h>
#include "Ast.h"
#include "Unit.h"
#include "MachineCode.h"
#include "LinearScan.h"
#include "SimplifyCFG.h"
using namespace std;

Ast ast;
Unit unit;
MachineUnit mUnit;
extern FILE *yyin;
extern FILE *yyout;
extern void clearSymbolEntries();
extern void clearTypes();
extern void clearMachineOperands();
int yyparse();

char outfile[256] = "a.out";
bool dump_tokens;
bool dump_ast;
bool dump_ir;
bool dump_asm;
bool optimize;

int main(int argc, char *argv[])
{
    int opt;
    while ((opt = getopt(argc, argv, "Siato:O::")) != -1)
    {
        switch (opt)
        {
        case 'o':
            strcpy(outfile, optarg);
            break;
        case 'a':
            dump_ast = true;
            break;
        case 't':
            dump_tokens = true;
            break;
        case 'i':
            dump_ir = true;
            break;
        case 'S':
            dump_asm = true;
            break;
        case 'O':
            optimize = true;
            break;
        default:
            fprintf(stderr, "Usage: %s [-o outfile] infile\n", argv[0]);
            exit(EXIT_FAILURE);
            break;
        }
    }
    if (optind >= argc)
    {
        fprintf(stderr, "no input file\n");
        exit(EXIT_FAILURE);
    }
    if (!(yyin = fopen(argv[optind], "r")))
    {
        fprintf(stderr, "%s: No such file or directory\nno input file\n", argv[optind]);
        exit(EXIT_FAILURE);
    }
    if (!(yyout = fopen(outfile, "w")))
    {
        fprintf(stderr, "%s: fail to open output file\n", outfile);
        exit(EXIT_FAILURE);
    }
    yyparse();
    fprintf(stderr, "ast built\n");
    if (dump_ast)
    {
        ast.output();
        fprintf(stderr, "ast output ok\n");
    }
    // ast.typeCheck();
    ast.genCode(&unit);
    fprintf(stderr, "ir generated\n");
    if (dump_ir && !optimize)
    {
        unit.output();
        fprintf(stderr, "ir output ok\n");
    }
    if (optimize)
    {
        // SimplifyCFG sc(&unit);
        // sc.pass();
        fprintf(stderr, "opt ir generated\n");
    }
    if (dump_ir && optimize)
    {
        unit.output();
        fprintf(stderr, "opt ir output ok\n");
    }
    unit.genMachineCode(&mUnit);
    LinearScan linearScan(&mUnit);
    linearScan.allocateRegisters();
    fprintf(stderr, "asm generated\n");
    if (dump_asm)
    {
        mUnit.output();
        fprintf(stderr, "asm output ok\n");
    }
    clearSymbolEntries();
    clearTypes();
    clearMachineOperands();
    return 0;
}
