#include <cstdio>
#include <cstdlib>
#include <cctype>
#include <sstream>
#include "expr_lexer.h"

enum class State {
    Start_q0,
    Start_q1,
    Parens_q0,
    ID_q0,
    ID_q1,
    ID_q3,
    Nums_q0,
    Nums_q2,
    Ops_q0,
};

Symbol ExprLexer::getNextToken() 
{
    State state = State::Start_q0;
    int ch = getNextChar();

    while (true) {
        switch (state) {
            // Start
            case State::Start_q0:
                state = State::Start_q1;
                text="";
                break;
            case State::Start_q1:
                if ((ch == '\n') || (ch == ' ') || (ch == '\t')) {
                    state = State::Start_q1;
                    ch = getNextChar();
                } else if (ch == EOF) {
                    return Symbol::Eof;
                } else {
                    // Trying next automaton 'Parens'
                    state = State::Parens_q0;
                }
                break;
            // Parens
            case State::Parens_q0:
                if (ch == '(') {
                    text += ch;
                    return Symbol::OPEN_PARENTHESIS;
                } else if (ch == ')') {
                    text += ch;
                    return Symbol::CLOSE_PARENTHESIS;
                } else {
                    // Trying next automaton 'ID'
                    state = State::ID_q0;
                }
                break;
            // ID
            case State::ID_q0:
                if ((ch >= 'a') && (ch <= 'z')) {
                    text += ch;
                    state = State::ID_q1;
                    ch = getNextChar();
                } else {
                    // Trying next automaton 'Nums'
                    state = State::Nums_q0;
                }
                break;
            case State::ID_q1:
                if (ch == '_') {
                    text += ch;
                    state = State::ID_q3;
                    ch = getNextChar();
                } else if (((ch >= '0') && (ch <= '9')) || ((ch >= 'a') && (ch <= 'z'))) {
                    text += ch;
                    state = State::ID_q1;
                    ch = getNextChar();
                } else {
                    ungetChar(ch);
                    return Symbol::ID;
                }
                break;
            case State::ID_q3:
                if (ch == '_') {
                    text += ch;
                    state = State::ID_q1;
                    ch = getNextChar();
                } else if (((ch >= '0') && (ch <= '9')) || ((ch >= 'a') && (ch <= 'z'))) {
                    text += ch;
                    state = State::ID_q3;
                    ch = getNextChar();
                } else {
                    ungetChar(ch);
                    return Symbol::ID;
                }
                break;
            // Nums
            case State::Nums_q0:
                if ((ch >= '0') && (ch <= '9')) {
                    text += ch;
                    state = State::Nums_q2;
                    ch = getNextChar();
                } else {
                    // Trying next automaton 'Ops'
                    state = State::Ops_q0;
                }
                break;
            case State::Nums_q2:
                if ((ch >= '0') && (ch <= '9')) {
                    text += ch;
                    state = State::Nums_q2;
                    ch = getNextChar();
                } else {
                    ungetChar(ch);
                    return Symbol::NUM;
                }
                break;
            // Ops
            case State::Ops_q0:
                if (ch == '*') {
                    text += ch;
                    return Symbol::MULT;
                } else if (ch == '+') {
                    text += ch;
                    return Symbol::SUM;
                } else {
                    reportError(ch);
                    ch = getNextChar();
                    state = State::Start_q0;
                }
                break;
        }
    }

}

const char *ExprLexer::tokenToString(Symbol tk)
{
    switch (tk) {
        case Symbol::SUM: return "SUM";
        case Symbol::OPEN_PARENTHESIS: return "OPEN_PARENTHESIS";
        case Symbol::Eof: return "Eof";
        case Symbol::ID: return "ID";
        case Symbol::NUM: return "NUM";
        case Symbol::CLOSE_PARENTHESIS: return "CLOSE_PARENTHESIS";
        case Symbol::MULT: return "MULT";
        default: return "Unknown";
    }

}