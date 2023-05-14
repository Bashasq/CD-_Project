# Arithmetic-expression-validator-and-evaluator
The Arithmetic Expression Validator and Evaluator is an compiler level program that Evaluates and validates the given Expressions using LEX and YACC parses to output the result.

### TOOLS USED
LEX The Lex tool receives at the input a set of user defined patterns that it uses to scan the source code. Each time the source code matches one of the patterns a defined action is executed by Lex (one of the action is that of returning the tokens).

Lex is officially known as a "Lexical Analyzer". It’s main job is to break up an input stream into more into meaningful units, or tokens. For example, consider breaking a text file up into individual words. More pragmatically, Lex is a tool for automatically generating a lexer ( also known as scanner).

YACC

The Yacc tool receives at the input the user grammar. Starting from this grammar it gene-rates the C source code for the parser. Yacc invokes Lex to scan the source code and uses the tokens returned by Lex to build a syntax tree.

YACC stands for Yet Another Compiler Compiler. Its GNU version is called Bison. YACC translates any grammar of a language into a parser for that language. Grammars for YACC are described using a variant of Backus Naur Form (BNF). A BNF grammar can be used to express context-free languages. By convention, a YACC file has the suffix .y.

Yacc generates a parser in file y.tab.c and an include file y.tab.h. Lex includes this file (y.tab.h) and uses the definitions for token values found in this file for the returned tokens.

Lexical Analyser - expr.l
Syntax analyser - expr.y

## To Compiler and run the program [Scanner +parser] 

* lex expr.l
* yacc -d expr.y
* gcc lex.yy.c y.tab.c
* ./a.out 

ctrl+d to exit the program

### Sample cases :

![](https://github.com/Kireeti2001/Arithmetic-expression-validator-and-evaluator/blob/main/outputsamples.png)
