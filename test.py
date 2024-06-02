from numpy import *
a=matrix('2,3,4;5,6,7;8,9,10')
b=matrix('22,23,24;31,42,53;65,65,45')

print("Matrix A:")
print(a)

print("\nMatrix B:")
print(b)

# Matrix Addition
m= a+b
print("\nMatrix Addition (A + B):")
print(m)

# Matrix Subtraction
s=a-b
print("\nMatrix Subtraction (A - B):")
print(s)

# Matrix Multiplication
m1=a * b
print("\nMatrix Multiplication (A * B):")
print(m1)


# Transpose of a Matrix
transpose_a = a.T
print("\nTranspose of Matrix A:")
print(transpose_a)

# Determinant of a Matrix
determinant_a = linalg.det(a)
print("\nDeterminant of Matrix A:")
print(determinant_a)

# Inverse of a Matrix
inverse_a = linalg.inv(a)
print("\nInverse of Matrix A:")
print(inverse_a)
