#include "Table.cpp"
#include "Parser.h"

void Parser::parse(){
	
	stck.push(Symbol::E);
	token = lexer.getNextToken();

	while(!stck.empty()){

		int token_index = indexOf(token);
		
		Symbol top = stck.top();
		int top_index = indexOf(top);

		if(isTerminal(top) || top == Symbol::Eof){
			if(top == token){
				stck.pop();
				token = lexer.getNextToken();
			}
			else{
				throw std::string("Expected ") + lexer.tokenToString(top) + " found " + lexer.getText();
			}
		}
		else{
			Rule rule = ll1_table[top_index][token_index];
			if(rule.isEmpty())
				throw "Unexpected token: " + lexer.getText();

			stck.pop();

			if(rule.rhs.front() != Symbol::Epsilon){
				for (auto it = rule.rhs.rbegin(); it != rule.rhs.rend(); ++it){
					stck.push(*it);
				}
			}

		}
	}
}