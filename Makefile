run:
	fa2lexer --src src/lexer.cpp --tpl fa/expr_lexer.fa2l
	ecc -g grammar.txt --hdr src/Symbol.h --src src/Table.cpp
	g++ -o build/parser src/*.cpp