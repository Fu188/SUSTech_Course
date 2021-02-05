// copy with reference notation
void CopyArray(double(&target)[5], double (&source)[5]);
// copy with pointer notation
void CopyArray(double *target, double *source, int len);
// copy with two pointers
void CopyArray(double *target, double *source_start, double *source_end);
//Print the values of three arrays in format
void PrintArray(double *target1, double *target2, double *target3, int len);
