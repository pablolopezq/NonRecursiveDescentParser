#ifndef EXPRLEXER_H
#define EXPRLEXER_H value

#include <fstream>
#include <string.h>
#include <iostream>

#include "Symbol.h"

using namespace std;

class ExprLexer
{

public:
	ExprLexer(ifstream& in) : in(in), line(1){}
	Symbol getNextToken();
	string getText(){ return text; }
	const char * tokenToString(Symbol tk);

private:
	ifstream& in;
	int line;
	string text;
	Symbol token;

	int getNextChar(){
        char c = in.get();
        if(c == '\n')
            line++;
        return c;
    }

    void ungetChar(char c) { 
        if(c == '\n')
            line--;
        in.unget(); 
    }

    void reportError(char c) {
        std::cerr << "Error at line " << line << " with '" << c << "'\n";
    }

};

#endif