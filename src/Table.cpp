#include <vector>
#include "Symbol.h"

struct Rule {
    Symbol lhs;
    std::vector<Symbol> rhs;
    bool isEmpty() const { return rhs.empty(); }
};

Rule none;
std::vector<std::vector<Rule>> ll1_table = {
    /* E */ { none, none, none, {Symbol::E, {Symbol::T, Symbol::E_, }}, none, {Symbol::E, {Symbol::T, Symbol::E_, }}, {Symbol::E, {Symbol::T, Symbol::E_, }}, },
    /* T */ { none, none, none, {Symbol::T, {Symbol::F, Symbol::T_, }}, none, {Symbol::T, {Symbol::F, Symbol::T_, }}, {Symbol::T, {Symbol::F, Symbol::T_, }}, },
    /* E' */ { {Symbol::E_, {Symbol::Epsilon, }}, {Symbol::E_, {Symbol::SUM, Symbol::T, Symbol::E_, }}, none, none, {Symbol::E_, {Symbol::Epsilon, }}, none, none, },
    /* F */ { none, none, none, {Symbol::F, {Symbol::OPEN_PARENTHESIS, Symbol::E, Symbol::CLOSE_PARENTHESIS, }}, none, {Symbol::F, {Symbol::ID, }}, {Symbol::F, {Symbol::NUM, }}, },
    /* T' */ { {Symbol::T_, {Symbol::Epsilon, }}, {Symbol::T_, {Symbol::Epsilon, }}, {Symbol::T_, {Symbol::MULT, Symbol::F, Symbol::T_, }}, none, {Symbol::T_, {Symbol::Epsilon, }}, none, none, },
};

