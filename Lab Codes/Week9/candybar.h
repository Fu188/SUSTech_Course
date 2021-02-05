#ifndef EXC_CANDYBAR_H
#define EXC_CANDYBAR_H
#include <iostream>
const int Len = 40;
struct CandyBar{
char brand[Len];
double weight;
int calorie;
};
// prompt the user to enter each of the preceding items of information and
// store them in the CandyBar structure
int setCandyBar(CandyBar & snack);
void showCandyBar(const CandyBar & snack);
#endif //EXC_CANDYBAR_H
