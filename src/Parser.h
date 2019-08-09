#ifndef PARSER_H
#define PARSER_H

#include <stack>
#include <vector>

#include "ExprLexer.h"

using namespace std;

class Parser
{

public:
	Parser(ExprLexer& lexer) : lexer(lexer) {}
	void parse();
	
private:
	Symbol token;
	ExprLexer& lexer;
	stack<Symbol> stck;

};

#endif