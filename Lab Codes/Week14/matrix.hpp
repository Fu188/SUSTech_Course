//
// Created by hp on 2019/12/13.
//
#include <iostream>
#ifndef UNTITLED_MATRIX_H
#define UNTITLED_MATRIX_H
#define MAXROWS 2
#define MAXCOLS 3

using namespace std;
template <class T>
class Matrix{
private:
    T matrix[MAXROWS][MAXCOLS];
    int rows;
    int cols;

public:
    Matrix(){
        rows = MAXROWS;
        cols = MAXCOLS;
    }

    void printMatrix(){
        for (int i = 0; i < rows; ++i) {
            for (int j = 0; j < cols; ++j) {
                cout << matrix[i][j] << " ";
            }
            cout << endl;
        }
    }

    void setMatrix(T otherArray[][MAXCOLS]){
        for (int i = 0; i < MAXROWS; ++i) {
            for (int j = 0; j < MAXCOLS; ++j) {
                matrix[i][j] = otherArray[i][j];
            }
        }
    }

    void addMatrix(T otherArray[][MAXCOLS]){
        for (int i = 0; i < MAXROWS; ++i) {
            for (int j = 0; j < MAXCOLS; ++j) {
                matrix[i][j] += otherArray[i][j];
            }
        }
    }

    void addMatrix(Matrix otherMatrix){
        for (int i = 0; i < MAXROWS; ++i) {
            for (int j = 0; j < MAXCOLS; ++j) {
                matrix[i][j] += otherMatrix.matrix[i][j];
            }
        }
    }
};


#endif //UNTITLED_MATRIX_H
