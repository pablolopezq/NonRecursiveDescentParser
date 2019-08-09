#include <iostream>
#include <fstream>

#include "Parser.h"
//include "ExprLexer.h"

int main(int argc, char const *argv[]){

	if (argc != 2 ) {
        cerr << "Usage: " << argv[0] << " <input file>\n";
        return 1;
    }

    ifstream in(argv[1], ios::in);

    if (!in.is_open()) {
        cerr << "Cannot open input file " << argv[1] << endl;
        return 1;
    }

    ExprLexer lexer(in);
    Parser parser(lexer);

    try{
    	parser.parse();
    }
    catch(const char* e){
    	cerr << e << endl;
    }

    // ExprLexer lexer(in);
    // Token token;

    // while(true) {
    //     token = lexer.getNextToken();
    //     if (token == Token::EoF)
    //         break;
    //     cout << lexer.toString(token) << " '" << lexer.getText() << "'\n";
    // }

    in.close();

	return 0;
}