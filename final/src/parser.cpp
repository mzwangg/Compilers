/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison implementation for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output, and Bison version.  */
#define YYBISON 30802

/* Bison version string.  */
#define YYBISON_VERSION "3.8.2"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1

/* "%code top" blocks.  */
#line 1 "src/parser.y"

    #include <iostream>
    #include <assert.h>
    #include <vector>
    #include "parser.h"
    extern Ast ast;
    int yylex();
    int yyerror( char const *);
    Type *curType = nullptr;
    Type *retType = nullptr;
    int whileDepth = 0;
    std::vector<int> arrayIdx;
    bool needRet = false;

#line 83 "src/parser.cpp"




# ifndef YY_CAST
#  ifdef __cplusplus
#   define YY_CAST(Type, Val) static_cast<Type> (Val)
#   define YY_REINTERPRET_CAST(Type, Val) reinterpret_cast<Type> (Val)
#  else
#   define YY_CAST(Type, Val) ((Type) (Val))
#   define YY_REINTERPRET_CAST(Type, Val) ((Type) (Val))
#  endif
# endif
# ifndef YY_NULLPTR
#  if defined __cplusplus
#   if 201103L <= __cplusplus
#    define YY_NULLPTR nullptr
#   else
#    define YY_NULLPTR 0
#   endif
#  else
#   define YY_NULLPTR ((void*)0)
#  endif
# endif

#include "parser.h"
/* Symbol kind.  */
enum yysymbol_kind_t
{
  YYSYMBOL_YYEMPTY = -2,
  YYSYMBOL_YYEOF = 0,                      /* "end of file"  */
  YYSYMBOL_YYerror = 1,                    /* error  */
  YYSYMBOL_YYUNDEF = 2,                    /* "invalid token"  */
  YYSYMBOL_INT = 3,                        /* INT  */
  YYSYMBOL_FLOAT = 4,                      /* FLOAT  */
  YYSYMBOL_CONST = 5,                      /* CONST  */
  YYSYMBOL_VOID = 6,                       /* VOID  */
  YYSYMBOL_IF = 7,                         /* IF  */
  YYSYMBOL_WHILE = 8,                      /* WHILE  */
  YYSYMBOL_RETURN = 9,                     /* RETURN  */
  YYSYMBOL_ELSE = 10,                      /* ELSE  */
  YYSYMBOL_BREAK = 11,                     /* BREAK  */
  YYSYMBOL_CONTINUE = 12,                  /* CONTINUE  */
  YYSYMBOL_ID = 13,                        /* ID  */
  YYSYMBOL_ADD = 14,                       /* ADD  */
  YYSYMBOL_SUB = 15,                       /* SUB  */
  YYSYMBOL_MUL = 16,                       /* MUL  */
  YYSYMBOL_DIV = 17,                       /* DIV  */
  YYSYMBOL_MOD = 18,                       /* MOD  */
  YYSYMBOL_OR = 19,                        /* OR  */
  YYSYMBOL_AND = 20,                       /* AND  */
  YYSYMBOL_ASSIGN = 21,                    /* ASSIGN  */
  YYSYMBOL_EQ = 22,                        /* EQ  */
  YYSYMBOL_NEQ = 23,                       /* NEQ  */
  YYSYMBOL_LESS = 24,                      /* LESS  */
  YYSYMBOL_LESSEQ = 25,                    /* LESSEQ  */
  YYSYMBOL_GREATER = 26,                   /* GREATER  */
  YYSYMBOL_GREATEREQ = 27,                 /* GREATEREQ  */
  YYSYMBOL_NOT = 28,                       /* NOT  */
  YYSYMBOL_INTEGERCONST = 29,              /* INTEGERCONST  */
  YYSYMBOL_FLOATCONST = 30,                /* FLOATCONST  */
  YYSYMBOL_COMMA = 31,                     /* COMMA  */
  YYSYMBOL_SEMICOLON = 32,                 /* SEMICOLON  */
  YYSYMBOL_LPAREN = 33,                    /* LPAREN  */
  YYSYMBOL_RPAREN = 34,                    /* RPAREN  */
  YYSYMBOL_LBRACE = 35,                    /* LBRACE  */
  YYSYMBOL_RBRACE = 36,                    /* RBRACE  */
  YYSYMBOL_LBRACKET = 37,                  /* LBRACKET  */
  YYSYMBOL_RBRACKET = 38,                  /* RBRACKET  */
  YYSYMBOL_THEN = 39,                      /* THEN  */
  YYSYMBOL_YYACCEPT = 40,                  /* $accept  */
  YYSYMBOL_CompUnit = 41,                  /* CompUnit  */
  YYSYMBOL_Stmts = 42,                     /* Stmts  */
  YYSYMBOL_Stmt = 43,                      /* Stmt  */
  YYSYMBOL_AssignStmt = 44,                /* AssignStmt  */
  YYSYMBOL_IfStmt = 45,                    /* IfStmt  */
  YYSYMBOL_WhileStmt = 46,                 /* WhileStmt  */
  YYSYMBOL_47_1 = 47,                      /* $@1  */
  YYSYMBOL_BreakStmt = 48,                 /* BreakStmt  */
  YYSYMBOL_ContinueStmt = 49,              /* ContinueStmt  */
  YYSYMBOL_ReturnStmt = 50,                /* ReturnStmt  */
  YYSYMBOL_NullStmt = 51,                  /* NullStmt  */
  YYSYMBOL_ExprStmt = 52,                  /* ExprStmt  */
  YYSYMBOL_DeclStmt = 53,                  /* DeclStmt  */
  YYSYMBOL_ConstDeclStmt = 54,             /* ConstDeclStmt  */
  YYSYMBOL_ConstDefList = 55,              /* ConstDefList  */
  YYSYMBOL_Type = 56,                      /* Type  */
  YYSYMBOL_ConstDef = 57,                  /* ConstDef  */
  YYSYMBOL_ConstInitVal = 58,              /* ConstInitVal  */
  YYSYMBOL_ConstInitValList = 59,          /* ConstInitValList  */
  YYSYMBOL_VarDeclStmt = 60,               /* VarDeclStmt  */
  YYSYMBOL_VarDefList = 61,                /* VarDefList  */
  YYSYMBOL_VarDef = 62,                    /* VarDef  */
  YYSYMBOL_ArrayConstIndices = 63,         /* ArrayConstIndices  */
  YYSYMBOL_InitVal = 64,                   /* InitVal  */
  YYSYMBOL_InitValList = 65,               /* InitValList  */
  YYSYMBOL_ArrayVarIndices = 66,           /* ArrayVarIndices  */
  YYSYMBOL_FuncDef = 67,                   /* FuncDef  */
  YYSYMBOL_68_2 = 68,                      /* $@2  */
  YYSYMBOL_69_3 = 69,                      /* $@3  */
  YYSYMBOL_FuncFParams = 70,               /* FuncFParams  */
  YYSYMBOL_FuncFParam = 71,                /* FuncFParam  */
  YYSYMBOL_FuncArrayIndices = 72,          /* FuncArrayIndices  */
  YYSYMBOL_BlockStmt = 73,                 /* BlockStmt  */
  YYSYMBOL_74_4 = 74,                      /* $@4  */
  YYSYMBOL_Exp = 75,                       /* Exp  */
  YYSYMBOL_Cond = 76,                      /* Cond  */
  YYSYMBOL_LRVal = 77,                     /* LRVal  */
  YYSYMBOL_PrimaryExpr = 78,               /* PrimaryExpr  */
  YYSYMBOL_UnaryExpr = 79,                 /* UnaryExpr  */
  YYSYMBOL_FuncRParams = 80,               /* FuncRParams  */
  YYSYMBOL_MulDivModExpr = 81,             /* MulDivModExpr  */
  YYSYMBOL_AddSubExpr = 82,                /* AddSubExpr  */
  YYSYMBOL_RelExpr = 83,                   /* RelExpr  */
  YYSYMBOL_LEqExpr = 84,                   /* LEqExpr  */
  YYSYMBOL_LAndExpr = 85,                  /* LAndExpr  */
  YYSYMBOL_LOrExpr = 86,                   /* LOrExpr  */
  YYSYMBOL_ConstExp = 87                   /* ConstExp  */
};
typedef enum yysymbol_kind_t yysymbol_kind_t;




#ifdef short
# undef short
#endif

/* On compilers that do not define __PTRDIFF_MAX__ etc., make sure
   <limits.h> and (if available) <stdint.h> are included
   so that the code can choose integer types of a good width.  */

#ifndef __PTRDIFF_MAX__
# include <limits.h> /* INFRINGES ON USER NAME SPACE */
# if defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stdint.h> /* INFRINGES ON USER NAME SPACE */
#  define YY_STDINT_H
# endif
#endif

/* Narrow types that promote to a signed type and that can represent a
   signed or unsigned integer of at least N bits.  In tables they can
   save space and decrease cache pressure.  Promoting to a signed type
   helps avoid bugs in integer arithmetic.  */

#ifdef __INT_LEAST8_MAX__
typedef __INT_LEAST8_TYPE__ yytype_int8;
#elif defined YY_STDINT_H
typedef int_least8_t yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef __INT_LEAST16_MAX__
typedef __INT_LEAST16_TYPE__ yytype_int16;
#elif defined YY_STDINT_H
typedef int_least16_t yytype_int16;
#else
typedef short yytype_int16;
#endif

/* Work around bug in HP-UX 11.23, which defines these macros
   incorrectly for preprocessor constants.  This workaround can likely
   be removed in 2023, as HPE has promised support for HP-UX 11.23
   (aka HP-UX 11i v2) only through the end of 2022; see Table 2 of
   <https://h20195.www2.hpe.com/V2/getpdf.aspx/4AA4-7673ENW.pdf>.  */
#ifdef __hpux
# undef UINT_LEAST8_MAX
# undef UINT_LEAST16_MAX
# define UINT_LEAST8_MAX 255
# define UINT_LEAST16_MAX 65535
#endif

#if defined __UINT_LEAST8_MAX__ && __UINT_LEAST8_MAX__ <= __INT_MAX__
typedef __UINT_LEAST8_TYPE__ yytype_uint8;
#elif (!defined __UINT_LEAST8_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST8_MAX <= INT_MAX)
typedef uint_least8_t yytype_uint8;
#elif !defined __UINT_LEAST8_MAX__ && UCHAR_MAX <= INT_MAX
typedef unsigned char yytype_uint8;
#else
typedef short yytype_uint8;
#endif

#if defined __UINT_LEAST16_MAX__ && __UINT_LEAST16_MAX__ <= __INT_MAX__
typedef __UINT_LEAST16_TYPE__ yytype_uint16;
#elif (!defined __UINT_LEAST16_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST16_MAX <= INT_MAX)
typedef uint_least16_t yytype_uint16;
#elif !defined __UINT_LEAST16_MAX__ && USHRT_MAX <= INT_MAX
typedef unsigned short yytype_uint16;
#else
typedef int yytype_uint16;
#endif

#ifndef YYPTRDIFF_T
# if defined __PTRDIFF_TYPE__ && defined __PTRDIFF_MAX__
#  define YYPTRDIFF_T __PTRDIFF_TYPE__
#  define YYPTRDIFF_MAXIMUM __PTRDIFF_MAX__
# elif defined PTRDIFF_MAX
#  ifndef ptrdiff_t
#   include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  endif
#  define YYPTRDIFF_T ptrdiff_t
#  define YYPTRDIFF_MAXIMUM PTRDIFF_MAX
# else
#  define YYPTRDIFF_T long
#  define YYPTRDIFF_MAXIMUM LONG_MAX
# endif
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned
# endif
#endif

#define YYSIZE_MAXIMUM                                  \
  YY_CAST (YYPTRDIFF_T,                                 \
           (YYPTRDIFF_MAXIMUM < YY_CAST (YYSIZE_T, -1)  \
            ? YYPTRDIFF_MAXIMUM                         \
            : YY_CAST (YYSIZE_T, -1)))

#define YYSIZEOF(X) YY_CAST (YYPTRDIFF_T, sizeof (X))


/* Stored state numbers (used for stacks). */
typedef yytype_uint8 yy_state_t;

/* State numbers in computations.  */
typedef int yy_state_fast_t;

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif


#ifndef YY_ATTRIBUTE_PURE
# if defined __GNUC__ && 2 < __GNUC__ + (96 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_PURE __attribute__ ((__pure__))
# else
#  define YY_ATTRIBUTE_PURE
# endif
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# if defined __GNUC__ && 2 < __GNUC__ + (7 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_UNUSED __attribute__ ((__unused__))
# else
#  define YY_ATTRIBUTE_UNUSED
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YY_USE(E) ((void) (E))
#else
# define YY_USE(E) /* empty */
#endif

/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
#if defined __GNUC__ && ! defined __ICC && 406 <= __GNUC__ * 100 + __GNUC_MINOR__
# if __GNUC__ * 100 + __GNUC_MINOR__ < 407
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")
# else
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")              \
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# endif
# define YY_IGNORE_MAYBE_UNINITIALIZED_END      \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif

#if defined __cplusplus && defined __GNUC__ && ! defined __ICC && 6 <= __GNUC__
# define YY_IGNORE_USELESS_CAST_BEGIN                          \
    _Pragma ("GCC diagnostic push")                            \
    _Pragma ("GCC diagnostic ignored \"-Wuseless-cast\"")
# define YY_IGNORE_USELESS_CAST_END            \
    _Pragma ("GCC diagnostic pop")
#endif
#ifndef YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_END
#endif


#define YY_ASSERT(E) ((void) (0 && (E)))

#if !defined yyoverflow

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* !defined yyoverflow */

#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yy_state_t yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (YYSIZEOF (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (YYSIZEOF (yy_state_t) + YYSIZEOF (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYPTRDIFF_T yynewbytes;                                         \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * YYSIZEOF (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / YYSIZEOF (*yyptr);                        \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, YY_CAST (YYSIZE_T, (Count)) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYPTRDIFF_T yyi;                      \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  59
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   268

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  40
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  48
/* YYNRULES -- Number of rules.  */
#define YYNRULES  106
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  182

/* YYMAXUTOK -- Last valid token kind.  */
#define YYMAXUTOK   294


/* YYTRANSLATE(TOKEN-NUM) -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, with out-of-bounds checking.  */
#define YYTRANSLATE(YYX)                                \
  (0 <= (YYX) && (YYX) <= YYMAXUTOK                     \
   ? YY_CAST (yysymbol_kind_t, yytranslate[YYX])        \
   : YYSYMBOL_YYUNDEF)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex.  */
static const yytype_int8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39
};

#if YYDEBUG
/* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_int16 yyrline[] =
{
       0,    58,    58,    64,    65,    72,    73,    74,    75,    76,
      77,    78,    79,    80,    81,    82,    86,    98,   101,   107,
     107,   116,   124,   132,   142,   156,   162,   168,   169,   173,
     179,   184,   191,   194,   197,   203,   219,   243,   248,   251,
     257,   262,   271,   277,   282,   289,   301,   318,   339,   363,
     368,   376,   383,   386,   392,   397,   405,   410,   419,   424,
     419,   458,   462,   466,   472,   478,   500,   505,   515,   515,
     524,   531,   536,   542,   554,   571,   574,   577,   581,   588,
     589,   614,   617,   627,   639,   644,   649,   655,   659,   669,
     679,   698,   699,   709,   722,   725,   735,   745,   755,   768,
     769,   779,   792,   793,   806,   807,   821
};
#endif

/** Accessing symbol of state STATE.  */
#define YY_ACCESSING_SYMBOL(State) YY_CAST (yysymbol_kind_t, yystos[State])

#if YYDEBUG || 0
/* The user-facing name of the symbol whose (internal) number is
   YYSYMBOL.  No bounds checking.  */
static const char *yysymbol_name (yysymbol_kind_t yysymbol) YY_ATTRIBUTE_UNUSED;

/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "\"end of file\"", "error", "\"invalid token\"", "INT", "FLOAT",
  "CONST", "VOID", "IF", "WHILE", "RETURN", "ELSE", "BREAK", "CONTINUE",
  "ID", "ADD", "SUB", "MUL", "DIV", "MOD", "OR", "AND", "ASSIGN", "EQ",
  "NEQ", "LESS", "LESSEQ", "GREATER", "GREATEREQ", "NOT", "INTEGERCONST",
  "FLOATCONST", "COMMA", "SEMICOLON", "LPAREN", "RPAREN", "LBRACE",
  "RBRACE", "LBRACKET", "RBRACKET", "THEN", "$accept", "CompUnit", "Stmts",
  "Stmt", "AssignStmt", "IfStmt", "WhileStmt", "$@1", "BreakStmt",
  "ContinueStmt", "ReturnStmt", "NullStmt", "ExprStmt", "DeclStmt",
  "ConstDeclStmt", "ConstDefList", "Type", "ConstDef", "ConstInitVal",
  "ConstInitValList", "VarDeclStmt", "VarDefList", "VarDef",
  "ArrayConstIndices", "InitVal", "InitValList", "ArrayVarIndices",
  "FuncDef", "$@2", "$@3", "FuncFParams", "FuncFParam", "FuncArrayIndices",
  "BlockStmt", "$@4", "Exp", "Cond", "LRVal", "PrimaryExpr", "UnaryExpr",
  "FuncRParams", "MulDivModExpr", "AddSubExpr", "RelExpr", "LEqExpr",
  "LAndExpr", "LOrExpr", "ConstExp", YY_NULLPTR
};

static const char *
yysymbol_name (yysymbol_kind_t yysymbol)
{
  return yytname[yysymbol];
}
#endif

#define YYPACT_NINF (-126)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-59)

#define yytable_value_is_error(Yyn) \
  0

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
static const yytype_int16 yypact[] =
{
     195,  -126,  -126,    58,  -126,     8,    15,   126,    31,    33,
      17,   235,   235,   235,  -126,  -126,  -126,   235,    43,    92,
     195,  -126,  -126,  -126,  -126,  -126,  -126,  -126,  -126,  -126,
    -126,  -126,    87,  -126,  -126,  -126,    69,    81,  -126,  -126,
      51,    10,    90,   235,   235,  -126,    72,  -126,  -126,  -126,
     235,   235,    70,  -126,  -126,  -126,    74,  -126,   195,  -126,
    -126,     5,    26,  -126,  -126,   235,   235,   235,   235,   235,
     235,   -14,    50,  -126,    76,    10,   -11,    67,    86,    93,
      77,  -126,  -126,    22,    75,   235,  -126,   161,     4,   235,
      -1,    85,   107,  -126,    89,  -126,  -126,  -126,    51,    51,
     227,     7,    90,  -126,   195,   235,   235,   235,   235,   235,
     235,   235,   235,  -126,   235,  -126,  -126,    84,  -126,   102,
    -126,  -126,    10,    88,     4,   235,    58,    14,  -126,  -126,
     203,  -126,  -126,   227,  -126,   114,    10,    10,    10,    10,
     -11,   -11,    67,    86,   195,  -126,  -126,  -126,  -126,    -9,
    -126,  -126,    91,   112,    97,  -126,  -126,  -126,    16,  -126,
     195,  -126,     4,  -126,  -126,    96,    58,   108,   227,  -126,
    -126,  -126,    98,   109,  -126,   113,  -126,  -126,   235,  -126,
     111,  -126
};

/* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE does not specify something else to do.  Zero
   means the default is an error.  */
static const yytype_int8 yydefact[] =
{
       0,    32,    33,     0,    34,     0,     0,     0,     0,     0,
      73,     0,     0,     0,    77,    78,    25,     0,    68,     0,
       2,     3,     5,     9,    10,    11,    12,    13,     8,     6,
      14,    28,     0,    27,    15,     7,     0,    76,    79,    87,
      91,    71,     0,     0,     0,    23,     0,    76,    21,    22,
      86,     0,    74,    81,    82,    83,     0,    70,     0,     1,
       4,    45,     0,    44,    26,     0,     0,     0,     0,     0,
       0,     0,     0,    31,     0,    94,    99,   102,   104,    72,
       0,    24,    84,     0,     0,     0,    75,     0,     0,     0,
      47,     0,     0,    42,     0,    88,    89,    90,    92,    93,
       0,     0,     0,    29,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    19,     0,    80,    57,     0,    69,     0,
      46,    51,   106,     0,     0,     0,    63,    45,    43,    16,
       0,    35,    37,     0,    30,    17,    95,    96,    97,    98,
     100,   101,   103,   105,     0,    85,    56,    53,    54,     0,
      50,    48,     0,     0,    59,    62,    39,    40,     0,    36,
       0,    20,     0,    52,    49,    64,     0,     0,     0,    38,
      18,    55,     0,    65,    61,     0,    41,    67,     0,    60,
       0,    66
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int8 yypgoto[] =
{
    -126,  -126,    94,   -17,  -126,  -126,  -126,  -126,  -126,  -126,
    -126,  -126,  -126,  -126,  -126,  -126,    -3,    45,  -125,  -126,
    -126,  -126,    59,    79,  -113,  -126,  -126,  -126,  -126,  -126,
    -126,   -13,  -126,   -15,  -126,    -5,   118,     1,  -126,    18,
    -126,    25,   -34,   -12,    60,    65,  -126,   -85
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_uint8 yydefgoto[] =
{
       0,    19,    20,    21,    22,    23,    24,   144,    25,    26,
      27,    28,    29,    30,    31,    72,    32,    73,   131,   158,
      33,    62,    63,    90,   120,   149,    52,    34,    91,   167,
     154,   155,   173,    35,    58,    36,    74,    47,    38,    39,
      83,    40,    41,    76,    77,    78,    79,   132
};

/* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule whose
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
      42,    37,    46,    60,   123,   157,   148,   100,   159,    75,
      75,   151,    56,   105,   106,   107,   108,    10,    11,    12,
     124,    37,   162,    89,    69,    70,    88,   163,   133,    53,
      54,    55,    13,    14,    15,    88,   125,    17,   -58,   119,
     152,    43,    89,   176,   125,    82,    84,   168,    44,   171,
      50,    89,   169,   114,    51,   122,   115,    92,    93,    37,
      94,     1,     2,    48,     4,    49,   122,    66,    67,    68,
      60,   136,   137,   138,   139,    75,    75,    75,    75,    57,
     117,   102,   103,   121,    95,    96,    97,   135,    37,   109,
     110,   122,    59,   180,    98,    99,   122,   140,   141,   122,
      61,    64,    65,    71,    81,    37,   111,    85,    86,   145,
     104,   113,   112,   116,   121,    10,    11,    12,   126,   121,
     127,   129,   146,   153,   160,   165,   150,   161,   166,   164,
      13,    14,    15,   172,   122,    17,   177,   119,   147,    10,
      11,    12,   175,   170,   122,    37,   178,   134,    18,   181,
     101,   128,    87,   174,    13,    14,    15,   121,    45,    17,
     179,    37,    80,   153,     1,     2,     3,     4,     5,     6,
       7,   142,     8,     9,    10,    11,    12,   143,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,    13,
      14,    15,     0,    16,    17,     0,    18,   118,     1,     2,
       3,     4,     5,     6,     7,     0,     8,     9,    10,    11,
      12,     0,     0,     0,     0,     0,    10,    11,    12,     0,
       0,     0,     0,    13,    14,    15,     0,    16,    17,     0,
      18,    13,    14,    15,     0,     0,    17,     0,   130,   156,
      10,    11,    12,     0,     0,     0,     0,     0,    10,    11,
      12,     0,     0,     0,     0,    13,    14,    15,     0,     0,
      17,     0,   130,    13,    14,    15,     0,     0,    17
};

static const yytype_int16 yycheck[] =
{
       3,     0,     7,    20,    89,   130,   119,    21,   133,    43,
      44,   124,    17,    24,    25,    26,    27,    13,    14,    15,
      21,    20,    31,    37,    14,    15,    21,    36,    21,    11,
      12,    13,    28,    29,    30,    21,    37,    33,    33,    35,
     125,    33,    37,   168,    37,    50,    51,    31,    33,   162,
      33,    37,    36,    31,    37,    89,    34,    31,    32,    58,
      65,     3,     4,    32,     6,    32,   100,    16,    17,    18,
      87,   105,   106,   107,   108,   109,   110,   111,   112,    36,
      85,    31,    32,    88,    66,    67,    68,   104,    87,    22,
      23,   125,     0,   178,    69,    70,   130,   109,   110,   133,
      13,    32,    21,    13,    32,   104,    20,    37,    34,   114,
      34,    34,    19,    38,   119,    13,    14,    15,    33,   124,
      13,    32,    38,   126,    10,    13,    38,   144,    31,    38,
      28,    29,    30,    37,   168,    33,    38,    35,    36,    13,
      14,    15,    34,   160,   178,   144,    37,   102,    35,    38,
      71,    92,    58,   166,    28,    29,    30,   162,    32,    33,
     175,   160,    44,   166,     3,     4,     5,     6,     7,     8,
       9,   111,    11,    12,    13,    14,    15,   112,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    28,
      29,    30,    -1,    32,    33,    -1,    35,    36,     3,     4,
       5,     6,     7,     8,     9,    -1,    11,    12,    13,    14,
      15,    -1,    -1,    -1,    -1,    -1,    13,    14,    15,    -1,
      -1,    -1,    -1,    28,    29,    30,    -1,    32,    33,    -1,
      35,    28,    29,    30,    -1,    -1,    33,    -1,    35,    36,
      13,    14,    15,    -1,    -1,    -1,    -1,    -1,    13,    14,
      15,    -1,    -1,    -1,    -1,    28,    29,    30,    -1,    -1,
      33,    -1,    35,    28,    29,    30,    -1,    -1,    33
};

/* YYSTOS[STATE-NUM] -- The symbol kind of the accessing symbol of
   state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,     3,     4,     5,     6,     7,     8,     9,    11,    12,
      13,    14,    15,    28,    29,    30,    32,    33,    35,    41,
      42,    43,    44,    45,    46,    48,    49,    50,    51,    52,
      53,    54,    56,    60,    67,    73,    75,    77,    78,    79,
      81,    82,    56,    33,    33,    32,    75,    77,    32,    32,
      33,    37,    66,    79,    79,    79,    75,    36,    74,     0,
      43,    13,    61,    62,    32,    21,    16,    17,    18,    14,
      15,    13,    55,    57,    76,    82,    83,    84,    85,    86,
      76,    32,    75,    80,    75,    37,    34,    42,    21,    37,
      63,    68,    31,    32,    75,    79,    79,    79,    81,    81,
      21,    63,    31,    32,    34,    24,    25,    26,    27,    22,
      23,    20,    19,    34,    31,    34,    38,    75,    36,    35,
      64,    75,    82,    87,    21,    37,    33,    13,    62,    32,
      35,    58,    87,    21,    57,    43,    82,    82,    82,    82,
      83,    83,    84,    85,    47,    75,    38,    36,    64,    65,
      38,    64,    87,    56,    70,    71,    36,    58,    59,    58,
      10,    43,    31,    36,    38,    13,    31,    69,    31,    36,
      43,    64,    37,    72,    71,    34,    58,    38,    37,    73,
      87,    38
};

/* YYR1[RULE-NUM] -- Symbol kind of the left-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr1[] =
{
       0,    40,    41,    42,    42,    43,    43,    43,    43,    43,
      43,    43,    43,    43,    43,    43,    44,    45,    45,    47,
      46,    48,    49,    50,    50,    51,    52,    53,    53,    54,
      55,    55,    56,    56,    56,    57,    57,    58,    58,    58,
      59,    59,    60,    61,    61,    62,    62,    62,    62,    63,
      63,    64,    64,    64,    65,    65,    66,    66,    68,    69,
      67,    70,    70,    70,    71,    71,    72,    72,    74,    73,
      73,    75,    76,    77,    77,    78,    78,    78,    78,    79,
      79,    79,    79,    79,    80,    80,    80,    81,    81,    81,
      81,    82,    82,    82,    83,    83,    83,    83,    83,    84,
      84,    84,    85,    85,    86,    86,    87
};

/* YYR2[RULE-NUM] -- Number of symbols on the right-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     1,     1,     2,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     4,     5,     7,     0,
       6,     2,     2,     2,     3,     1,     2,     1,     1,     4,
       3,     1,     1,     1,     1,     3,     4,     1,     3,     2,
       1,     3,     3,     3,     1,     1,     3,     2,     4,     4,
       3,     1,     3,     2,     1,     3,     4,     3,     0,     0,
       8,     3,     1,     0,     2,     3,     4,     2,     0,     4,
       2,     1,     1,     1,     2,     3,     1,     1,     1,     1,
       4,     2,     2,     2,     1,     3,     0,     1,     3,     3,
       3,     1,     3,     3,     1,     3,     3,     3,     3,     1,
       3,     3,     1,     3,     1,     3,     1
};


enum { YYENOMEM = -2 };

#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab
#define YYNOMEM         goto yyexhaustedlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                    \
  do                                                              \
    if (yychar == YYEMPTY)                                        \
      {                                                           \
        yychar = (Token);                                         \
        yylval = (Value);                                         \
        YYPOPSTACK (yylen);                                       \
        yystate = *yyssp;                                         \
        goto yybackup;                                            \
      }                                                           \
    else                                                          \
      {                                                           \
        yyerror (YY_("syntax error: cannot back up")); \
        YYERROR;                                                  \
      }                                                           \
  while (0)

/* Backward compatibility with an undocumented macro.
   Use YYerror or YYUNDEF. */
#define YYERRCODE YYUNDEF


/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)




# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Kind, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*-----------------------------------.
| Print this symbol's value on YYO.  |
`-----------------------------------*/

static void
yy_symbol_value_print (FILE *yyo,
                       yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  FILE *yyoutput = yyo;
  YY_USE (yyoutput);
  if (!yyvaluep)
    return;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/*---------------------------.
| Print this symbol on YYO.  |
`---------------------------*/

static void
yy_symbol_print (FILE *yyo,
                 yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyo, "%s %s (",
             yykind < YYNTOKENS ? "token" : "nterm", yysymbol_name (yykind));

  yy_symbol_value_print (yyo, yykind, yyvaluep);
  YYFPRINTF (yyo, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yy_state_t *yybottom, yy_state_t *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yy_state_t *yyssp, YYSTYPE *yyvsp,
                 int yyrule)
{
  int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %d):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       YY_ACCESSING_SYMBOL (+yyssp[yyi + 1 - yynrhs]),
                       &yyvsp[(yyi + 1) - (yynrhs)]);
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args) ((void) 0)
# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif






/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg,
            yysymbol_kind_t yykind, YYSTYPE *yyvaluep)
{
  YY_USE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yykind, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/* Lookahead token kind.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;




/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    yy_state_fast_t yystate = 0;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus = 0;

    /* Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* Their size.  */
    YYPTRDIFF_T yystacksize = YYINITDEPTH;

    /* The state stack: array, bottom, top.  */
    yy_state_t yyssa[YYINITDEPTH];
    yy_state_t *yyss = yyssa;
    yy_state_t *yyssp = yyss;

    /* The semantic value stack: array, bottom, top.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs = yyvsa;
    YYSTYPE *yyvsp = yyvs;

  int yyn;
  /* The return value of yyparse.  */
  int yyresult;
  /* Lookahead symbol kind.  */
  yysymbol_kind_t yytoken = YYSYMBOL_YYEMPTY;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;



#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yychar = YYEMPTY; /* Cause a token to be read.  */

  goto yysetstate;


/*------------------------------------------------------------.
| yynewstate -- push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;


/*--------------------------------------------------------------------.
| yysetstate -- set current state (the top of the stack) to yystate.  |
`--------------------------------------------------------------------*/
yysetstate:
  YYDPRINTF ((stderr, "Entering state %d\n", yystate));
  YY_ASSERT (0 <= yystate && yystate < YYNSTATES);
  YY_IGNORE_USELESS_CAST_BEGIN
  *yyssp = YY_CAST (yy_state_t, yystate);
  YY_IGNORE_USELESS_CAST_END
  YY_STACK_PRINT (yyss, yyssp);

  if (yyss + yystacksize - 1 <= yyssp)
#if !defined yyoverflow && !defined YYSTACK_RELOCATE
    YYNOMEM;
#else
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYPTRDIFF_T yysize = yyssp - yyss + 1;

# if defined yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        yy_state_t *yyss1 = yyss;
        YYSTYPE *yyvs1 = yyvs;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * YYSIZEOF (*yyssp),
                    &yyvs1, yysize * YYSIZEOF (*yyvsp),
                    &yystacksize);
        yyss = yyss1;
        yyvs = yyvs1;
      }
# else /* defined YYSTACK_RELOCATE */
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        YYNOMEM;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yy_state_t *yyss1 = yyss;
        union yyalloc *yyptr =
          YY_CAST (union yyalloc *,
                   YYSTACK_ALLOC (YY_CAST (YYSIZE_T, YYSTACK_BYTES (yystacksize))));
        if (! yyptr)
          YYNOMEM;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YY_IGNORE_USELESS_CAST_BEGIN
      YYDPRINTF ((stderr, "Stack size increased to %ld\n",
                  YY_CAST (long, yystacksize)));
      YY_IGNORE_USELESS_CAST_END

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }
#endif /* !defined yyoverflow && !defined YYSTACK_RELOCATE */


  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;


/*-----------.
| yybackup.  |
`-----------*/
yybackup:
  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either empty, or end-of-input, or a valid lookahead.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token\n"));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = YYEOF;
      yytoken = YYSYMBOL_YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else if (yychar == YYerror)
    {
      /* The scanner already issued an error message, process directly
         to error recovery.  But do not keep the error token as
         lookahead, it is too special and may lead us to an endless
         loop in error recovery. */
      yychar = YYUNDEF;
      yytoken = YYSYMBOL_YYerror;
      goto yyerrlab1;
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);
  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  /* Discard the shifted token.  */
  yychar = YYEMPTY;
  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
  case 2: /* CompUnit: Stmts  */
#line 58 "src/parser.y"
            {
        ast.setRoot((yyvsp[0].stmttype));
    }
#line 1309 "src/parser.cpp"
    break;

  case 3: /* Stmts: Stmt  */
#line 64 "src/parser.y"
           {(yyval.stmttype) = new SeqStmt((yyvsp[0].stmttype));}
#line 1315 "src/parser.cpp"
    break;

  case 4: /* Stmts: Stmts Stmt  */
#line 65 "src/parser.y"
                {
        ((SeqStmt*)(yyvsp[-1].stmttype))->addChild((yyvsp[0].stmttype));
        (yyval.stmttype) = (yyvsp[-1].stmttype);
    }
#line 1324 "src/parser.cpp"
    break;

  case 5: /* Stmt: AssignStmt  */
#line 72 "src/parser.y"
                 {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1330 "src/parser.cpp"
    break;

  case 6: /* Stmt: ExprStmt  */
#line 73 "src/parser.y"
               {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1336 "src/parser.cpp"
    break;

  case 7: /* Stmt: BlockStmt  */
#line 74 "src/parser.y"
                {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1342 "src/parser.cpp"
    break;

  case 8: /* Stmt: NullStmt  */
#line 75 "src/parser.y"
               {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1348 "src/parser.cpp"
    break;

  case 9: /* Stmt: IfStmt  */
#line 76 "src/parser.y"
             {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1354 "src/parser.cpp"
    break;

  case 10: /* Stmt: WhileStmt  */
#line 77 "src/parser.y"
                {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1360 "src/parser.cpp"
    break;

  case 11: /* Stmt: BreakStmt  */
#line 78 "src/parser.y"
                {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1366 "src/parser.cpp"
    break;

  case 12: /* Stmt: ContinueStmt  */
#line 79 "src/parser.y"
                   {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1372 "src/parser.cpp"
    break;

  case 13: /* Stmt: ReturnStmt  */
#line 80 "src/parser.y"
                 {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1378 "src/parser.cpp"
    break;

  case 14: /* Stmt: DeclStmt  */
#line 81 "src/parser.y"
               {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1384 "src/parser.cpp"
    break;

  case 15: /* Stmt: FuncDef  */
#line 82 "src/parser.y"
              {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1390 "src/parser.cpp"
    break;

  case 16: /* AssignStmt: LRVal ASSIGN Exp SEMICOLON  */
#line 86 "src/parser.y"
                                 {
        assert(convertible((yyvsp[-1].exprtype)->getType(), (yyvsp[-3].exprtype)->getType()));
        ExprNode *t = typeCast((yyvsp[-1].exprtype), (yyvsp[-3].exprtype)->getType());
        if((yyvsp[-3].exprtype)->getType()->isConst()) {
            fprintf(stderr, "can't assign a constant which can only be read");
            assert(!(yyvsp[-3].exprtype)->getType()->isConst());
        }
        (yyval.stmttype) = new AssignStmt((yyvsp[-3].exprtype), t); 
    }
#line 1404 "src/parser.cpp"
    break;

  case 17: /* IfStmt: IF LPAREN Cond RPAREN Stmt  */
#line 98 "src/parser.y"
                                            {
        (yyval.stmttype) = new IfStmt((yyvsp[-2].exprtype), (yyvsp[0].stmttype));
    }
#line 1412 "src/parser.cpp"
    break;

  case 18: /* IfStmt: IF LPAREN Cond RPAREN Stmt ELSE Stmt  */
#line 101 "src/parser.y"
                                           {
        (yyval.stmttype) = new IfElseStmt((yyvsp[-4].exprtype), (yyvsp[-2].stmttype), (yyvsp[0].stmttype));
    }
#line 1420 "src/parser.cpp"
    break;

  case 19: /* $@1: %empty  */
#line 107 "src/parser.y"
                               {
        whileDepth++;
    }
#line 1428 "src/parser.cpp"
    break;

  case 20: /* WhileStmt: WHILE LPAREN Cond RPAREN $@1 Stmt  */
#line 109 "src/parser.y"
           {
        (yyval.stmttype) = new WhileStmt((yyvsp[-3].exprtype), (yyvsp[0].stmttype));
        whileDepth--;
    }
#line 1437 "src/parser.cpp"
    break;

  case 21: /* BreakStmt: BREAK SEMICOLON  */
#line 116 "src/parser.y"
                      {
        // 类型检查8：while-break
        assert(whileDepth && "\"break\" not in whilestmt\n");
        (yyval.stmttype) = new BreakStmt();
    }
#line 1447 "src/parser.cpp"
    break;

  case 22: /* ContinueStmt: CONTINUE SEMICOLON  */
#line 124 "src/parser.y"
                         {
        // 类型检查8：while-continue
        assert(whileDepth && "\"continue\" not in whilestmt\n");
        (yyval.stmttype) = new ContinueStmt();
    }
#line 1457 "src/parser.cpp"
    break;

  case 23: /* ReturnStmt: RETURN SEMICOLON  */
#line 132 "src/parser.y"
                       {
        // 类型检查6：return类型检查
        if(!retType->isVoid())
        {
            fprintf(stderr, "retType mismatch: return \"%s\", expected \"%s\"\n", TypeSystem::voidType->toStr().c_str(), retType->toStr().c_str());
            assert(retType->isVoid());
        }
        (yyval.stmttype) = new ReturnStmt(nullptr);
        needRet = false;
    }
#line 1472 "src/parser.cpp"
    break;

  case 24: /* ReturnStmt: RETURN Exp SEMICOLON  */
#line 142 "src/parser.y"
                           {
        // 类型检查6：return类型检查
        if(!convertible((yyvsp[-1].exprtype)->getType(), retType))
        {
            fprintf(stderr, "retType mismatch: return \"%s\", expected \"%s\"\n", (yyvsp[-1].exprtype)->getType()->toStr().c_str(), retType->toStr().c_str());
            assert(convertible((yyvsp[-1].exprtype)->getType(), retType));
        }
        ExprNode *t = typeCast((yyvsp[-1].exprtype), retType);
        (yyval.stmttype) = new ReturnStmt(t);
        needRet = false;
    }
#line 1488 "src/parser.cpp"
    break;

  case 25: /* NullStmt: SEMICOLON  */
#line 156 "src/parser.y"
                {
        (yyval.stmttype) = new NullStmt();
    }
#line 1496 "src/parser.cpp"
    break;

  case 26: /* ExprStmt: Exp SEMICOLON  */
#line 162 "src/parser.y"
                    {
        (yyval.stmttype) = new ExprStmt((yyvsp[-1].exprtype));
    }
#line 1504 "src/parser.cpp"
    break;

  case 27: /* DeclStmt: VarDeclStmt  */
#line 168 "src/parser.y"
                  {(yyval.stmttype) = (yyvsp[0].stmttype);}
#line 1510 "src/parser.cpp"
    break;

  case 28: /* DeclStmt: ConstDeclStmt  */
#line 169 "src/parser.y"
                    {(yyval.stmttype) = (yyvsp[0].stmttype);}
#line 1516 "src/parser.cpp"
    break;

  case 29: /* ConstDeclStmt: CONST Type ConstDefList SEMICOLON  */
#line 173 "src/parser.y"
                                        {
        (yyval.stmttype) = ((DeclStmt*)(yyvsp[-1].stmttype))->getHead();
    }
#line 1524 "src/parser.cpp"
    break;

  case 30: /* ConstDefList: ConstDefList COMMA ConstDef  */
#line 179 "src/parser.y"
                                  {
        ((DeclStmt*)(yyvsp[0].stmttype))->setHead(((DeclStmt*)(yyvsp[-2].stmttype))->getHead());
        ((DeclStmt*)(yyvsp[-2].stmttype))->setNext((DeclStmt*)(yyvsp[0].stmttype));        
        (yyval.stmttype) = (yyvsp[0].stmttype);
    }
#line 1534 "src/parser.cpp"
    break;

  case 31: /* ConstDefList: ConstDef  */
#line 184 "src/parser.y"
               {
        ((DeclStmt*)(yyvsp[0].stmttype))->setHead((DeclStmt*)(yyvsp[0].stmttype));
        (yyval.stmttype) = (yyvsp[0].stmttype); 
    }
#line 1543 "src/parser.cpp"
    break;

  case 32: /* Type: INT  */
#line 191 "src/parser.y"
          {
        (yyval.type) = curType = TypeSystem::intType;
    }
#line 1551 "src/parser.cpp"
    break;

  case 33: /* Type: FLOAT  */
#line 194 "src/parser.y"
            {
        (yyval.type) = curType = TypeSystem::floatType;
    }
#line 1559 "src/parser.cpp"
    break;

  case 34: /* Type: VOID  */
#line 197 "src/parser.y"
           {
        (yyval.type) = curType = TypeSystem::voidType;
    }
#line 1567 "src/parser.cpp"
    break;

  case 35: /* ConstDef: ID ASSIGN ConstInitVal  */
#line 203 "src/parser.y"
                             {
        curType = Var2Const(curType);
        ExprNode *t3 = typeCast((dynamic_cast<InitNode*>((yyvsp[0].stmttype)))->getself(), curType);
        (dynamic_cast<InitNode*>((yyvsp[0].stmttype)))->setleaf(t3);
        SymbolEntry *se = new IdentifierSymbolEntry(curType, (yyvsp[-2].strtype), identifiers->getLevel());
        se->setValue((dynamic_cast<InitNode*>((yyvsp[0].stmttype)))->getself()->getValue());
        int ret = identifiers->install((yyvsp[-2].strtype), se);
        // 类型检查1：变量在同一作用域下重复声明
        if(!ret)
        {
            fprintf(stderr, "identifier \"%s\" is redefined\n", (char*)(yyvsp[-2].strtype));
            assert(ret);
        }
        (yyval.stmttype) = new DeclStmt(new Id(se), (dynamic_cast<InitNode*>((yyvsp[0].stmttype))));
        delete [](yyvsp[-2].strtype);
    }
#line 1588 "src/parser.cpp"
    break;

  case 36: /* ConstDef: ID ArrayConstIndices ASSIGN ConstInitVal  */
#line 219 "src/parser.y"
                                               {
        Type* type;
        if(curType->isInt())
            type =  new ConstIntArrayType();
        else
            type =  new ConstFloatArrayType();
        for(auto exp : dynamic_cast<IndicesNode*>((yyvsp[-2].stmttype))->getExprList())
            dynamic_cast<ArrayType*>(type)->addDim((int)exp->getValue());
        SymbolEntry *se_var_list = new IdentifierSymbolEntry(type, (yyvsp[-3].strtype), identifiers->getLevel());
        auto ret = identifiers->install((yyvsp[-3].strtype), se_var_list);;
        // 类型检查1：变量在同一作用域下重复声明
        if(!ret)
        {
            fprintf(stderr, "identifier \"%s\" is redefined\n", (char*)(yyvsp[-3].strtype));
            assert(ret);
        }
        Id* new_Id = new Id(se_var_list);
        new_Id->setIndices(dynamic_cast<IndicesNode*>((yyvsp[-2].stmttype)));
        (yyval.stmttype) = new DeclStmt(new_Id, dynamic_cast<InitNode*>((yyvsp[0].stmttype)), true, true);
        delete [](yyvsp[-3].strtype);
    }
#line 1614 "src/parser.cpp"
    break;

  case 37: /* ConstInitVal: ConstExp  */
#line 243 "src/parser.y"
               {
        InitNode* new_exp = new InitNode(true);
        new_exp->setleaf(dynamic_cast<ExprNode*>((yyvsp[0].exprtype)));
        (yyval.stmttype) = new_exp;
    }
#line 1624 "src/parser.cpp"
    break;

  case 38: /* ConstInitVal: LBRACE ConstInitValList RBRACE  */
#line 248 "src/parser.y"
                                     {
        (yyval.stmttype) = (yyvsp[-1].stmttype);
    }
#line 1632 "src/parser.cpp"
    break;

  case 39: /* ConstInitVal: LBRACE RBRACE  */
#line 251 "src/parser.y"
                    {
        (yyval.stmttype) = new InitNode(true);
    }
#line 1640 "src/parser.cpp"
    break;

  case 40: /* ConstInitValList: ConstInitVal  */
#line 257 "src/parser.y"
                   {
        InitNode* new_expr = new InitNode(true);
        new_expr->addleaf(dynamic_cast<InitNode*>((yyvsp[0].stmttype)));
        (yyval.stmttype) = new_expr;
    }
#line 1650 "src/parser.cpp"
    break;

  case 41: /* ConstInitValList: ConstInitValList COMMA ConstInitVal  */
#line 262 "src/parser.y"
                                          {
        InitNode* this_expr = dynamic_cast<InitNode*>((yyvsp[-2].stmttype));
        this_expr->addleaf(dynamic_cast<InitNode*>((yyvsp[0].stmttype)));
        (yyval.stmttype) = this_expr;
    }
#line 1660 "src/parser.cpp"
    break;

  case 42: /* VarDeclStmt: Type VarDefList SEMICOLON  */
#line 271 "src/parser.y"
                              {
        (yyval.stmttype) = ((DeclStmt*)(yyvsp[-1].stmttype))->getHead();
    }
#line 1668 "src/parser.cpp"
    break;

  case 43: /* VarDefList: VarDefList COMMA VarDef  */
#line 277 "src/parser.y"
                              {
        ((DeclStmt*)(yyvsp[0].stmttype))->setHead(((DeclStmt*)(yyvsp[-2].stmttype))->getHead());
        ((DeclStmt*)(yyvsp[-2].stmttype))->setNext((DeclStmt*)(yyvsp[0].stmttype));
        (yyval.stmttype) = (yyvsp[0].stmttype);
    }
#line 1678 "src/parser.cpp"
    break;

  case 44: /* VarDefList: VarDef  */
#line 282 "src/parser.y"
             {
        ((DeclStmt*)(yyvsp[0].stmttype))->setHead((DeclStmt*)(yyvsp[0].stmttype));
        (yyval.stmttype) = (yyvsp[0].stmttype);
    }
#line 1687 "src/parser.cpp"
    break;

  case 45: /* VarDef: ID  */
#line 289 "src/parser.y"
         {
        SymbolEntry *se = new IdentifierSymbolEntry(curType, (yyvsp[0].strtype), identifiers->getLevel());
        int ret = identifiers->install((yyvsp[0].strtype), se);
        // 类型检查1：变量在同一作用域下重复声明
        if(!ret)
        {
            fprintf(stderr, "identifier \"%s\" is redefined\n", (char*)(yyvsp[0].strtype));
            assert(ret);
        }
        (yyval.stmttype) = new DeclStmt(new Id(se));
        delete [](yyvsp[0].strtype);
    }
#line 1704 "src/parser.cpp"
    break;

  case 46: /* VarDef: ID ASSIGN InitVal  */
#line 301 "src/parser.y"
                        {
        assert(convertible((dynamic_cast<InitNode*>((yyvsp[0].stmttype)))->getself()->getType(), curType));
        ExprNode *t3 = typeCast((dynamic_cast<InitNode*>((yyvsp[0].stmttype)))->getself(), curType);
        (dynamic_cast<InitNode*>((yyvsp[0].stmttype)))->setleaf(t3);
        SymbolEntry *se = new IdentifierSymbolEntry(curType, (yyvsp[-2].strtype), identifiers->getLevel());
        int ret = identifiers->install((yyvsp[-2].strtype), se);
        // 类型检查1：变量在同一作用域下重复声明
        if(!ret)
        {
            fprintf(stderr, "identifier \"%s\" is redefined\n", (char*)(yyvsp[-2].strtype));
            assert(ret);
        }
        if((dynamic_cast<InitNode*>((yyvsp[0].stmttype)))->getself()->getType()->isConst())
            se->setValue((dynamic_cast<InitNode*>((yyvsp[0].stmttype)))->getself()->getValue());
        (yyval.stmttype) = new DeclStmt(new Id(se), (dynamic_cast<InitNode*>((yyvsp[0].stmttype))));
        delete [](yyvsp[-2].strtype);
    }
#line 1726 "src/parser.cpp"
    break;

  case 47: /* VarDef: ID ArrayConstIndices  */
#line 318 "src/parser.y"
                           {
        Type* type;
        if (curType->isInt())
            type = new IntArrayType();
        else 
            type = new FloatArrayType();
        for(auto exp : dynamic_cast<IndicesNode*>((yyvsp[0].stmttype))->getExprList())
            dynamic_cast<ArrayType*>(type)->addDim((int)exp->getValue());
        SymbolEntry *se_var_list = new IdentifierSymbolEntry(type, (yyvsp[-1].strtype), identifiers->getLevel());
        int ret = identifiers->install((yyvsp[-1].strtype), se_var_list);
        // 类型检查1：变量在同一作用域下重复声明
        if (!ret)
        {
            fprintf(stderr, "identifier \"%s\" is redefined\n", (char*)(yyvsp[-1].strtype));
            assert(ret);
        }
        Id* new_Id = new Id(se_var_list);
        new_Id->setIndices(dynamic_cast<IndicesNode*>((yyvsp[0].stmttype)));
        (yyval.stmttype) = new DeclStmt(new_Id, nullptr, false, true);
        delete [](yyvsp[-1].strtype);
    }
#line 1752 "src/parser.cpp"
    break;

  case 48: /* VarDef: ID ArrayConstIndices ASSIGN InitVal  */
#line 339 "src/parser.y"
                                          {
        Type* type;
        if (curType->isInt())
            type = new IntArrayType();
        else 
            type = new FloatArrayType();
        for(auto exp : dynamic_cast<IndicesNode*>((yyvsp[-2].stmttype))->getExprList())
            dynamic_cast<ArrayType*>(type)->addDim((int)exp->getValue());
        SymbolEntry *se_var_list = new IdentifierSymbolEntry(type, (yyvsp[-3].strtype), identifiers->getLevel());
        int ret = identifiers->install((yyvsp[-3].strtype), se_var_list);
        // 类型检查1：变量在同一作用域下重复声明
        if (!ret)
        {
            fprintf(stderr, "identifier \"%s\" is redefined\n", (char*)(yyvsp[-3].strtype));
            assert(ret);
        }
        Id* new_Id = new Id(se_var_list);
        new_Id->setIndices(dynamic_cast<IndicesNode*>((yyvsp[-2].stmttype)));
        (yyval.stmttype) = new DeclStmt(new_Id, dynamic_cast<InitNode*>((yyvsp[0].stmttype)), false, true);
        delete [](yyvsp[-3].strtype);
    }
#line 1778 "src/parser.cpp"
    break;

  case 49: /* ArrayConstIndices: ArrayConstIndices LBRACKET ConstExp RBRACKET  */
#line 363 "src/parser.y"
                                                   {
        IndicesNode* node = dynamic_cast<IndicesNode*>((yyvsp[-3].stmttype));
        node->addNew((yyvsp[-1].exprtype));
        (yyval.stmttype) = node;
    }
#line 1788 "src/parser.cpp"
    break;

  case 50: /* ArrayConstIndices: LBRACKET ConstExp RBRACKET  */
#line 368 "src/parser.y"
                                 {
        IndicesNode* node = new IndicesNode();
        node->addNew((yyvsp[-1].exprtype));
        (yyval.stmttype) = node;
    }
#line 1798 "src/parser.cpp"
    break;

  case 51: /* InitVal: Exp  */
#line 376 "src/parser.y"
          {
        InitNode* new_exp = new InitNode(false);
        assert(convertible(dynamic_cast<ExprNode*>((yyvsp[0].exprtype))->getType(), curType));
        ExprNode* new_expr = typeCast(dynamic_cast<ExprNode*>((yyvsp[0].exprtype)), curType);
        new_exp->setleaf(new_expr);
        (yyval.stmttype) = new_exp;
    }
#line 1810 "src/parser.cpp"
    break;

  case 52: /* InitVal: LBRACE InitValList RBRACE  */
#line 383 "src/parser.y"
                                {
        (yyval.stmttype) = (yyvsp[-1].stmttype);;
    }
#line 1818 "src/parser.cpp"
    break;

  case 53: /* InitVal: LBRACE RBRACE  */
#line 386 "src/parser.y"
                    {
        (yyval.stmttype) = new InitNode(true);
    }
#line 1826 "src/parser.cpp"
    break;

  case 54: /* InitValList: InitVal  */
#line 392 "src/parser.y"
              {
        InitNode* new_expr = new InitNode(false);
        new_expr->addleaf(dynamic_cast<InitNode*>((yyvsp[0].stmttype)));
        (yyval.stmttype) = new_expr;
    }
#line 1836 "src/parser.cpp"
    break;

  case 55: /* InitValList: InitValList COMMA InitVal  */
#line 397 "src/parser.y"
                                {
        InitNode* this_expr = dynamic_cast<InitNode*>((yyvsp[-2].stmttype));
        this_expr->addleaf(dynamic_cast<InitNode*>((yyvsp[0].stmttype)));
        (yyval.stmttype) = this_expr;
    }
#line 1846 "src/parser.cpp"
    break;

  case 56: /* ArrayVarIndices: ArrayVarIndices LBRACKET Exp RBRACKET  */
#line 405 "src/parser.y"
                                            {
        IndicesNode* node = dynamic_cast<IndicesNode*>((yyvsp[-3].stmttype));
        node->addNew((yyvsp[-1].exprtype));
        (yyval.stmttype) = node;
    }
#line 1856 "src/parser.cpp"
    break;

  case 57: /* ArrayVarIndices: LBRACKET Exp RBRACKET  */
#line 410 "src/parser.y"
                            {
        IndicesNode* node = new IndicesNode();
        node->addNew((yyvsp[-1].exprtype));
        (yyval.stmttype) = node;
    }
#line 1866 "src/parser.cpp"
    break;

  case 58: /* $@2: %empty  */
#line 419 "src/parser.y"
            {
        retType = (yyvsp[-1].type);
        needRet = true;
        identifiers = new SymbolTable(identifiers);
    }
#line 1876 "src/parser.cpp"
    break;

  case 59: /* $@3: %empty  */
#line 424 "src/parser.y"
                      {
        Type *FuncType = ((yyvsp[0].stmttype) != nullptr) ? new FunctionType((yyvsp[-4].type), ((FuncDefParamsNode*)(yyvsp[0].stmttype))->getParamsType()) : new FunctionType((yyvsp[-4].type), {});
        SymbolEntry *se = new IdentifierSymbolEntry(FuncType, (yyvsp[-3].strtype), identifiers->getLevel() - 1);
        int ret = identifiers->getPrev()->install((yyvsp[-3].strtype), se);
        // 类型检查4：参数类型相同的函数重定义
        if(!ret)
        {
            fprintf(stderr, "function \"%s\" is redefined\n", (char*)(yyvsp[-3].strtype));
            assert(ret);
        }
    }
#line 1892 "src/parser.cpp"
    break;

  case 60: /* FuncDef: Type ID $@2 LPAREN FuncFParams $@3 RPAREN BlockStmt  */
#line 435 "src/parser.y"
                    {
        // 类型检查6：缺少return
        if(needRet)
        {
            if((yyvsp[-7].type)->isVoid())
                ((SeqStmt*)(((CompoundStmt*)(yyvsp[0].stmttype))->getStmt()))->addChild(new ReturnStmt(nullptr));
            else
            {
                fprintf(stderr, "missing return stmt\n");
                assert(!needRet);
            }
        }
        SymbolEntry *se =  ((yyvsp[-3].stmttype) != nullptr) ? identifiers->lookup((yyvsp[-6].strtype), true, ((FuncDefParamsNode*)(yyvsp[-3].stmttype))->getParamsType()):identifiers->lookup((yyvsp[-6].strtype), true, {});
        assert(se != nullptr);
        (yyval.stmttype) = new FuncDefNode(se, dynamic_cast<FuncDefParamsNode*>((yyvsp[-3].stmttype)), (yyvsp[0].stmttype), needRet);
        SymbolTable *top = identifiers;
        identifiers = identifiers->getPrev();
        delete top;
        delete [](yyvsp[-6].strtype);
    }
#line 1917 "src/parser.cpp"
    break;

  case 61: /* FuncFParams: FuncFParams COMMA FuncFParam  */
#line 458 "src/parser.y"
                                   {
       ((FuncDefParamsNode*)(yyvsp[-2].stmttype))->addChild((Id*)(yyvsp[0].exprtype));
       (yyval.stmttype) = (yyvsp[-2].stmttype);
    }
#line 1926 "src/parser.cpp"
    break;

  case 62: /* FuncFParams: FuncFParam  */
#line 462 "src/parser.y"
                 {
        (yyval.stmttype) = new FuncDefParamsNode();
        ((FuncDefParamsNode*)(yyval.stmttype))->addChild((Id*)(yyvsp[0].exprtype));
    }
#line 1935 "src/parser.cpp"
    break;

  case 63: /* FuncFParams: %empty  */
#line 466 "src/parser.y"
             {
        (yyval.stmttype) = nullptr;
    }
#line 1943 "src/parser.cpp"
    break;

  case 64: /* FuncFParam: Type ID  */
#line 472 "src/parser.y"
              {
        SymbolEntry *se = new IdentifierSymbolEntry((yyvsp[-1].type), (yyvsp[0].strtype), identifiers->getLevel());
        identifiers->install((yyvsp[0].strtype), se);
        (yyval.exprtype) = new Id(se);
        delete [](yyvsp[0].strtype);
    }
#line 1954 "src/parser.cpp"
    break;

  case 65: /* FuncFParam: Type ID FuncArrayIndices  */
#line 478 "src/parser.y"
                               {
        ArrayType* arrayType; 
        if((yyvsp[-2].type)==TypeSystem::intType){
            arrayType = new IntArrayType();
        } else if((yyvsp[-2].type)==TypeSystem::floatType){
            arrayType = new FloatArrayType();
        }
        arrayType->SetDim(arrayIdx);
        arrayType->setlenth();
        arrayIdx.clear();
        SymbolEntry *se = new IdentifierSymbolEntry(arrayType, (yyvsp[-1].strtype), identifiers->getLevel());
        identifiers->install((yyvsp[-1].strtype), se);
        Id* id = new Id(se);
        id->setIndices(dynamic_cast<IndicesNode*>((yyvsp[0].stmttype)));
        ((IdentifierSymbolEntry*)se)->setLabel();
        ((IdentifierSymbolEntry*)se)->setAddr(new Operand(se));
        (yyval.exprtype) = id;
        delete [](yyvsp[-1].strtype);
    }
#line 1978 "src/parser.cpp"
    break;

  case 66: /* FuncArrayIndices: FuncArrayIndices LBRACKET ConstExp RBRACKET  */
#line 500 "src/parser.y"
                                                  {
        dynamic_cast<IndicesNode*>((yyvsp[-3].stmttype))->addNew((yyvsp[-1].exprtype));
        (yyval.stmttype) = (yyvsp[-3].stmttype);
        arrayIdx.push_back(-1);
    }
#line 1988 "src/parser.cpp"
    break;

  case 67: /* FuncArrayIndices: LBRACKET RBRACKET  */
#line 505 "src/parser.y"
                        {
        SymbolEntry *addDim = new ConstantSymbolEntry(TypeSystem::constIntType, -1);
        IndicesNode* indice = new IndicesNode();
        indice->addNew(new Constant(addDim));
        (yyval.stmttype) = indice;
        arrayIdx.push_back(-1);
    }
#line 2000 "src/parser.cpp"
    break;

  case 68: /* $@4: %empty  */
#line 515 "src/parser.y"
             {
        identifiers = new SymbolTable(identifiers);
    }
#line 2008 "src/parser.cpp"
    break;

  case 69: /* BlockStmt: LBRACE $@4 Stmts RBRACE  */
#line 518 "src/parser.y"
                 {
        (yyval.stmttype) = new CompoundStmt((yyvsp[-1].stmttype));
        SymbolTable *top = identifiers;
        identifiers = identifiers->getPrev();
        delete top;
    }
#line 2019 "src/parser.cpp"
    break;

  case 70: /* BlockStmt: LBRACE RBRACE  */
#line 524 "src/parser.y"
                    {
        (yyval.stmttype) = new CompoundStmt(nullptr);
    }
#line 2027 "src/parser.cpp"
    break;

  case 71: /* Exp: AddSubExpr  */
#line 531 "src/parser.y"
               {(yyval.exprtype) = (yyvsp[0].exprtype);}
#line 2033 "src/parser.cpp"
    break;

  case 72: /* Cond: LOrExpr  */
#line 536 "src/parser.y"
            {
        (yyval.exprtype) = typeCast((yyvsp[0].exprtype), logicMax((yyvsp[0].exprtype)->getType(), (yyvsp[0].exprtype)->getType()));
    }
#line 2041 "src/parser.cpp"
    break;

  case 73: /* LRVal: ID  */
#line 542 "src/parser.y"
         {
        SymbolEntry *se;
        se = identifiers->lookup((yyvsp[0].strtype));
        // 类型检查1：变量未声明
        if(se == nullptr)
        {
            fprintf(stderr, "identifier \"%s\" is undefined\n", (char*)(yyvsp[0].strtype));
            assert(se != nullptr);
        }
        (yyval.exprtype) = new Id(se);
        delete [](yyvsp[0].strtype);
    }
#line 2058 "src/parser.cpp"
    break;

  case 74: /* LRVal: ID ArrayVarIndices  */
#line 554 "src/parser.y"
                         {
        SymbolEntry *se;
        se = identifiers->lookup((yyvsp[-1].strtype));
        // 类型检查1：变量未声明
        if(se == nullptr)
        {
            fprintf(stderr, "identifier \"%s\" is undefined\n", (char*)(yyvsp[-1].strtype));
            assert(se != nullptr);
        }
        Id* new_id = new Id(se, true);
        new_id->setIndices(dynamic_cast<IndicesNode*>((yyvsp[0].stmttype)));
        (yyval.exprtype) = new_id;
        delete [](yyvsp[-1].strtype);
    }
#line 2077 "src/parser.cpp"
    break;

  case 75: /* PrimaryExpr: LPAREN Exp RPAREN  */
#line 571 "src/parser.y"
                        {
        (yyval.exprtype) = (yyvsp[-1].exprtype);
    }
#line 2085 "src/parser.cpp"
    break;

  case 76: /* PrimaryExpr: LRVal  */
#line 574 "src/parser.y"
            {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 2093 "src/parser.cpp"
    break;

  case 77: /* PrimaryExpr: INTEGERCONST  */
#line 577 "src/parser.y"
                   {
        SymbolEntry *se = new ConstantSymbolEntry(TypeSystem::constIntType, (yyvsp[0].itype));
        (yyval.exprtype) = new Constant(se);
    }
#line 2102 "src/parser.cpp"
    break;

  case 78: /* PrimaryExpr: FLOATCONST  */
#line 581 "src/parser.y"
                 {
        SymbolEntry *se = new ConstantSymbolEntry(TypeSystem::constFloatType, (yyvsp[0].ftype));
        (yyval.exprtype) = new Constant(se);
    }
#line 2111 "src/parser.cpp"
    break;

  case 79: /* UnaryExpr: PrimaryExpr  */
#line 588 "src/parser.y"
                  {(yyval.exprtype) = (yyvsp[0].exprtype);}
#line 2117 "src/parser.cpp"
    break;

  case 80: /* UnaryExpr: ID LPAREN FuncRParams RPAREN  */
#line 589 "src/parser.y"
                                   {
        std::vector<Type *> paramsType =  ((yyvsp[-1].stmttype) != nullptr) ? ((FuncCallParamsNode*)(yyvsp[-1].stmttype))->getParamsType() : std::vector<Type *>{};
        SymbolEntry *se = identifiers->lookup((yyvsp[-3].strtype), true, paramsType);
        // 类型检查4、5：函数未声明+参数不匹配
        if(se == nullptr)
        {
            fprintf(stderr, "function \"%s\" is undefined or params mismatch\n", (char*)(yyvsp[-3].strtype));
            assert(se != nullptr);
        }
        //实参类型隐式转化
        if((yyvsp[-1].stmttype) != nullptr)
        {
            std::vector<ExprNode *> RParams = dynamic_cast<FuncCallParamsNode *>(yyvsp[-1].stmttype)->getParams();
            std::vector<Type *> FParamsType = dynamic_cast<FunctionType *>(se->getType())->getParamsType();
            for(size_t i = 0; i != RParams.size(); i++)
            {
                if(!FParamsType[i]->isARRAY())
                    RParams[i] = typeCast(RParams[i], FParamsType[i]);
            }
            dynamic_cast<FuncCallParamsNode *>(yyvsp[-1].stmttype)->setParams(RParams);
        }
        Type *retType = dynamic_cast<FunctionType *>(se->getType())->getRetType();
        SymbolEntry *t = new TemporarySymbolEntry(retType, SymbolTable::getLabel());
        (yyval.exprtype) = new FuncCallNode(t, new Id(se), (FuncCallParamsNode*)(yyvsp[-1].stmttype));
    }
#line 2147 "src/parser.cpp"
    break;

  case 81: /* UnaryExpr: ADD UnaryExpr  */
#line 614 "src/parser.y"
                    {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 2155 "src/parser.cpp"
    break;

  case 82: /* UnaryExpr: SUB UnaryExpr  */
#line 617 "src/parser.y"
                    {
        Type *resType = unaryMax((yyvsp[0].exprtype)->getType(), TypeSystem::MINUS);
        ExprNode *t = typeCast((yyvsp[0].exprtype), resType);
        SymbolEntry *se;
        if(resType->isConst())
            se = new ConstantSymbolEntry(resType, -(t->getValue()));
        else
            se = new TemporarySymbolEntry(resType, SymbolTable::getLabel());
        (yyval.exprtype) = new UnaryExpr(se, UnaryExpr::MINUS, t);
    }
#line 2170 "src/parser.cpp"
    break;

  case 83: /* UnaryExpr: NOT UnaryExpr  */
#line 627 "src/parser.y"
                    {
        Type *resType = unaryMax((yyvsp[0].exprtype)->getType(), TypeSystem::NOT);
        SymbolEntry *se;
        if(resType->isConst())
            se = new ConstantSymbolEntry(resType, !((yyvsp[0].exprtype)->getValue()));
        else
            se = new TemporarySymbolEntry(resType, SymbolTable::getLabel());
        (yyval.exprtype) = new UnaryExpr(se, UnaryExpr::NOT, (yyvsp[0].exprtype));
    }
#line 2184 "src/parser.cpp"
    break;

  case 84: /* FuncRParams: Exp  */
#line 639 "src/parser.y"
          {
        FuncCallParamsNode *node = new FuncCallParamsNode();
        node->addChild((yyvsp[0].exprtype));
        (yyval.stmttype) = node;
    }
#line 2194 "src/parser.cpp"
    break;

  case 85: /* FuncRParams: FuncRParams COMMA Exp  */
#line 644 "src/parser.y"
                            {
        FuncCallParamsNode *node = dynamic_cast<FuncCallParamsNode*>((yyvsp[-2].stmttype));
        node->addChild((yyvsp[0].exprtype));
        (yyval.stmttype) = node;
    }
#line 2204 "src/parser.cpp"
    break;

  case 86: /* FuncRParams: %empty  */
#line 649 "src/parser.y"
             {
       (yyval.stmttype) = nullptr;
    }
#line 2212 "src/parser.cpp"
    break;

  case 87: /* MulDivModExpr: UnaryExpr  */
#line 655 "src/parser.y"
                {
        (yyval.exprtype) = (yyvsp[0].exprtype);
        // $$->setType(calcMax($1->getType(), $1->getType()));
    }
#line 2221 "src/parser.cpp"
    break;

  case 88: /* MulDivModExpr: MulDivModExpr MUL UnaryExpr  */
#line 659 "src/parser.y"
                                  {
        Type *resType = calcMax((yyvsp[-2].exprtype)->getType(), (yyvsp[0].exprtype)->getType());
        ExprNode *t1 = typeCast((yyvsp[-2].exprtype), resType), *t3 = typeCast((yyvsp[0].exprtype), resType);
        SymbolEntry *se;
        if(resType->isConst())
            se = new ConstantSymbolEntry(resType, (t1->getValue()) * (t3->getValue()));
        else
            se = new TemporarySymbolEntry(resType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::MUL, t1, t3);
    }
#line 2236 "src/parser.cpp"
    break;

  case 89: /* MulDivModExpr: MulDivModExpr DIV UnaryExpr  */
#line 669 "src/parser.y"
                                  {
        Type *resType = calcMax((yyvsp[-2].exprtype)->getType(), (yyvsp[0].exprtype)->getType());
        ExprNode *t1 = typeCast((yyvsp[-2].exprtype), resType), *t3 = typeCast((yyvsp[0].exprtype), resType);
        SymbolEntry *se;
        if(resType->isConst())
            se = new ConstantSymbolEntry(resType, (t1->getValue()) / (t3->getValue()));
        else
            se = new TemporarySymbolEntry(resType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::DIV, t1, t3);
    }
#line 2251 "src/parser.cpp"
    break;

  case 90: /* MulDivModExpr: MulDivModExpr MOD UnaryExpr  */
#line 679 "src/parser.y"
                                  {
        // 类型检查3：非整数类型参与取模运算
        if(!((yyvsp[-2].exprtype)->getType()->isInt() && (yyvsp[0].exprtype)->getType()->isInt()))
        {
            fprintf(stderr, "%s mod %s\n", (yyvsp[-2].exprtype)->getType()->toStr().c_str(), (yyvsp[0].exprtype)->getType()->toStr().c_str());
            assert((yyvsp[-2].exprtype)->getType()->isInt() && (yyvsp[0].exprtype)->getType()->isInt());
        }
        Type *resType = calcMax((yyvsp[-2].exprtype)->getType(), (yyvsp[0].exprtype)->getType());
        ExprNode *t1 = typeCast((yyvsp[-2].exprtype), resType), *t3 = typeCast((yyvsp[0].exprtype), resType);
        SymbolEntry *se;
        if(resType->isConst())
            se = new ConstantSymbolEntry(resType, (int)(t1->getValue()) % (int)(t3->getValue()));
        else
            se = new TemporarySymbolEntry(resType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::MOD, t1, t3);
    }
#line 2272 "src/parser.cpp"
    break;

  case 91: /* AddSubExpr: MulDivModExpr  */
#line 698 "src/parser.y"
                    {(yyval.exprtype) = (yyvsp[0].exprtype);}
#line 2278 "src/parser.cpp"
    break;

  case 92: /* AddSubExpr: AddSubExpr ADD MulDivModExpr  */
#line 699 "src/parser.y"
                                   {
        Type *resType = calcMax((yyvsp[-2].exprtype)->getType(), (yyvsp[0].exprtype)->getType());
        ExprNode *t1 = typeCast((yyvsp[-2].exprtype), resType), *t3 = typeCast((yyvsp[0].exprtype), resType);
        SymbolEntry *se;
        if(resType->isConst())
            se = new ConstantSymbolEntry(resType, (t1->getValue()) + (t3->getValue()));
        else
            se = new TemporarySymbolEntry(resType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::ADD, t1, t3);
    }
#line 2293 "src/parser.cpp"
    break;

  case 93: /* AddSubExpr: AddSubExpr SUB MulDivModExpr  */
#line 709 "src/parser.y"
                                   {
        Type *resType = calcMax((yyvsp[-2].exprtype)->getType(), (yyvsp[0].exprtype)->getType());
        ExprNode *t1 = typeCast((yyvsp[-2].exprtype), resType), *t3 = typeCast((yyvsp[0].exprtype), resType);
        SymbolEntry *se;
        if(resType->isConst())
            se = new ConstantSymbolEntry(resType, (t1->getValue()) - (t3->getValue()));
        else
            se = new TemporarySymbolEntry(resType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::SUB, t1, t3);
    }
#line 2308 "src/parser.cpp"
    break;

  case 94: /* RelExpr: AddSubExpr  */
#line 722 "src/parser.y"
                 {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 2316 "src/parser.cpp"
    break;

  case 95: /* RelExpr: RelExpr LESS AddSubExpr  */
#line 725 "src/parser.y"
                              {
        Type *maxType = relMax((yyvsp[-2].exprtype)->getType(), (yyvsp[0].exprtype)->getType()), *resType = logicMax((yyvsp[-2].exprtype)->getType(), (yyvsp[0].exprtype)->getType());
        ExprNode *t1 = typeCast((yyvsp[-2].exprtype), maxType), *t3 = typeCast((yyvsp[0].exprtype), maxType);
        SymbolEntry *se;
        if(resType->isConst())
            se = new ConstantSymbolEntry(resType, (t1->getValue()) < (t3->getValue()));
        else
            se = new TemporarySymbolEntry(resType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::LESS, t1, t3);
    }
#line 2331 "src/parser.cpp"
    break;

  case 96: /* RelExpr: RelExpr LESSEQ AddSubExpr  */
#line 735 "src/parser.y"
                                {
        Type *maxType = relMax((yyvsp[-2].exprtype)->getType(), (yyvsp[0].exprtype)->getType()), *resType = logicMax((yyvsp[-2].exprtype)->getType(), (yyvsp[0].exprtype)->getType());
        ExprNode *t1 = typeCast((yyvsp[-2].exprtype), maxType), *t3 = typeCast((yyvsp[0].exprtype), maxType);
        SymbolEntry *se;
        if(resType->isConst())
            se = new ConstantSymbolEntry(resType, (t1->getValue()) <= (t3->getValue()));
        else
            se = new TemporarySymbolEntry(resType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::LESSEQ, t1, t3);
    }
#line 2346 "src/parser.cpp"
    break;

  case 97: /* RelExpr: RelExpr GREATER AddSubExpr  */
#line 745 "src/parser.y"
                                 {
        Type *maxType = relMax((yyvsp[-2].exprtype)->getType(), (yyvsp[0].exprtype)->getType()), *resType = logicMax((yyvsp[-2].exprtype)->getType(), (yyvsp[0].exprtype)->getType());
        ExprNode *t1 = typeCast((yyvsp[-2].exprtype), maxType), *t3 = typeCast((yyvsp[0].exprtype), maxType);
        SymbolEntry *se;
        if(resType->isConst())
            se = new ConstantSymbolEntry(resType, (t1->getValue()) > (t3->getValue()));
        else
            se = new TemporarySymbolEntry(resType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::GREATER, t1, t3);
    }
#line 2361 "src/parser.cpp"
    break;

  case 98: /* RelExpr: RelExpr GREATEREQ AddSubExpr  */
#line 755 "src/parser.y"
                                   {
        Type *maxType = relMax((yyvsp[-2].exprtype)->getType(), (yyvsp[0].exprtype)->getType()), *resType = logicMax((yyvsp[-2].exprtype)->getType(), (yyvsp[0].exprtype)->getType());
        ExprNode *t1 = typeCast((yyvsp[-2].exprtype), maxType), *t3 = typeCast((yyvsp[0].exprtype), maxType);
        SymbolEntry *se;
        if(resType->isConst())
            se = new ConstantSymbolEntry(resType, (t1->getValue()) >= (t3->getValue()));
        else
            se = new TemporarySymbolEntry(resType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::GREATEREQ, t1, t3);
    }
#line 2376 "src/parser.cpp"
    break;

  case 99: /* LEqExpr: RelExpr  */
#line 768 "src/parser.y"
              {(yyval.exprtype) = (yyvsp[0].exprtype);}
#line 2382 "src/parser.cpp"
    break;

  case 100: /* LEqExpr: LEqExpr EQ RelExpr  */
#line 769 "src/parser.y"
                         {
        Type *maxType = relMax((yyvsp[-2].exprtype)->getType(), (yyvsp[0].exprtype)->getType()), *resType = logicMax((yyvsp[-2].exprtype)->getType(), (yyvsp[0].exprtype)->getType());
        ExprNode *t1 = typeCast((yyvsp[-2].exprtype), maxType), *t3 = typeCast((yyvsp[0].exprtype), maxType);
        SymbolEntry *se;
        if(resType->isConst())
            se = new ConstantSymbolEntry(resType, (t1->getValue()) == (t3->getValue()));
        else
            se = new TemporarySymbolEntry(resType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::EQ, t1, t3);
    }
#line 2397 "src/parser.cpp"
    break;

  case 101: /* LEqExpr: LEqExpr NEQ RelExpr  */
#line 779 "src/parser.y"
                          {
        Type *maxType = relMax((yyvsp[-2].exprtype)->getType(), (yyvsp[0].exprtype)->getType()), *resType = logicMax((yyvsp[-2].exprtype)->getType(), (yyvsp[0].exprtype)->getType());
        ExprNode *t1 = typeCast((yyvsp[-2].exprtype), maxType), *t3 = typeCast((yyvsp[0].exprtype), maxType);
        SymbolEntry *se;
        if(resType->isConst())
            se = new ConstantSymbolEntry(resType, (t1->getValue()) != (t3->getValue()));
        else
            se = new TemporarySymbolEntry(resType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::NEQ, t1, t3);
    }
#line 2412 "src/parser.cpp"
    break;

  case 102: /* LAndExpr: LEqExpr  */
#line 792 "src/parser.y"
              {(yyval.exprtype) = (yyvsp[0].exprtype);}
#line 2418 "src/parser.cpp"
    break;

  case 103: /* LAndExpr: LAndExpr AND LEqExpr  */
#line 793 "src/parser.y"
                           {
        Type *resType = logicMax((yyvsp[-2].exprtype)->getType(), (yyvsp[0].exprtype)->getType());
        ExprNode *t1 = typeCast((yyvsp[-2].exprtype), resType), *t3 = typeCast((yyvsp[0].exprtype), resType);
        SymbolEntry *se;
        if(resType->isConst())
            se = new ConstantSymbolEntry(resType, (t1->getValue()) && (t3->getValue()));
        else
            se = new TemporarySymbolEntry(resType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::AND, t1, t3);
    }
#line 2433 "src/parser.cpp"
    break;

  case 104: /* LOrExpr: LAndExpr  */
#line 806 "src/parser.y"
               {(yyval.exprtype) = (yyvsp[0].exprtype);}
#line 2439 "src/parser.cpp"
    break;

  case 105: /* LOrExpr: LOrExpr OR LAndExpr  */
#line 807 "src/parser.y"
                          {
        Type *resType = logicMax((yyvsp[-2].exprtype)->getType(), (yyvsp[0].exprtype)->getType());
        ExprNode *t1 = typeCast((yyvsp[-2].exprtype), resType), *t3 = typeCast((yyvsp[0].exprtype), resType);
        SymbolEntry *se;
        if(resType->isConst())
            se = new ConstantSymbolEntry(resType, (t1->getValue()) || (t3->getValue()));
        else
            se = new TemporarySymbolEntry(resType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::OR, t1, t3);
    }
#line 2454 "src/parser.cpp"
    break;

  case 106: /* ConstExp: AddSubExpr  */
#line 821 "src/parser.y"
               {
        assert((yyvsp[0].exprtype)->getType()->isConst());
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 2463 "src/parser.cpp"
    break;


#line 2467 "src/parser.cpp"

      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", YY_CAST (yysymbol_kind_t, yyr1[yyn]), &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */
  {
    const int yylhs = yyr1[yyn] - YYNTOKENS;
    const int yyi = yypgoto[yylhs] + *yyssp;
    yystate = (0 <= yyi && yyi <= YYLAST && yycheck[yyi] == *yyssp
               ? yytable[yyi]
               : yydefgoto[yylhs]);
  }

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYSYMBOL_YYEMPTY : YYTRANSLATE (yychar);
  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
      yyerror (YY_("syntax error"));
    }

  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:
  /* Pacify compilers when the user code never invokes YYERROR and the
     label yyerrorlab therefore never appears in user code.  */
  if (0)
    YYERROR;
  ++yynerrs;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  /* Pop stack until we find a state that shifts the error token.  */
  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYSYMBOL_YYerror;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYSYMBOL_YYerror)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  YY_ACCESSING_SYMBOL (yystate), yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", YY_ACCESSING_SYMBOL (yyn), yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturnlab;


/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturnlab;


/*-----------------------------------------------------------.
| yyexhaustedlab -- YYNOMEM (memory exhaustion) comes here.  |
`-----------------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  goto yyreturnlab;


/*----------------------------------------------------------.
| yyreturnlab -- parsing is finished, clean up and return.  |
`----------------------------------------------------------*/
yyreturnlab:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  YY_ACCESSING_SYMBOL (+*yyssp), yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif

  return yyresult;
}

#line 826 "src/parser.y"


int yyerror(char const *message)
{
    std::cerr<<message<<std::endl;
    return -1;
}
