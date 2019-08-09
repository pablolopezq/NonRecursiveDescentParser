#ifndef __SYMBOL_H__
#define __SYMBOL_H__

enum class Symbol: unsigned {
    E = 0,
    T = 1,
    E_ = 2,
    F = 3,
    T_ = 4,
    Eof = 5,
    SUM = 6,
    MULT = 7,
    OPEN_PARENTHESIS = 8,
    CLOSE_PARENTHESIS = 9,
    ID = 10,
    NUM = 11,
    Epsilon = 12
};

static inline unsigned indexOf(Symbol s) {
    unsigned index = static_cast<unsigned>(s);
    if (index < 5) return index;
    else return (index - 5);
}

static inline bool isTerminal(Symbol s) {
    return static_cast<unsigned>(s) >= 5;
}

#endif
