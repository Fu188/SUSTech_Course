#include<iostream>
#include"matrix.hpp"
using namespace std;
template <typedef T>
Matrix<T>::Matrix(){
	rows = MAXROWS;
	cols = MAXCOLS;
	for(int i=0;i<rows;i++){
		for(int j=0;j<cols;j++){
			matrix[i][j] = 0;
		}
	}
}
template<typedef T>
void Matrix<T>::printMatrix(){
	for(int i=0;i<rows;i++){
		for(int j=0;j<cols;j++){
			cout<<matrix[i][j];
		}
	}
}

template<typedef T>
void Matrix<T>::setMatrix(T [][MAXCOLS]){
	
}

template <typename T1>
void useMatrixTemplate(Matrix<T1>& M, T1 array1[][MAXCOLS], T1 array2[]
[MAXCOLS])
{
M.setMatrix(array1);
cout << "\nMatrix set to first array" << endl;
M.printMatrix();
M.addMatrix(array2);
cout << "\nMatrix incremented by second array" << endl;
M.printMatrix();
}
