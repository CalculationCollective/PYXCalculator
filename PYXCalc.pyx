from libc.stdlib cimport atoi
from cpython.ref cimport Py_INCREF, Py_DECREF

cdef calc():
    global input_str, Num1, Num2, calcType
    input_str = input("Enter the first number: ").encode('utf-8')
    Py_INCREF(input_str)
    Num1 = atoi(input_str)

    input_str = input("Enter the second number: ").encode('utf-8')
    Py_INCREF(input_str)
    Num2 = atoi(input_str)

    input_str = input("""Choose a operation:
    1) Addition
    2) Subtraction
    3) Division
    4) Multiplication""").encode('utf-8')
    Py_INCREF(input_str)
    calcType = atoi(input_str)

    # Decrement the reference count of input_str
    Py_DECREF(input_str)

cdef result(int calcType):
    if calcType == 1:
        print(f"Result: {Num1} + {Num2}")
    elif calcType == 2:
        print(f"Result: {Num1} - {Num2}")
    elif calcType == 3:
        print(f"Result: {Num1} / {Num2}")
    elif calcType == 4:
        print(f"Result: {Num1} * {Num2}")
