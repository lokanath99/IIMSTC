import 'dart:io';

void main()
{
  var inp = stdin.readLineSync();
  print(inp);

// arthematic operator
// Operator Symbol	Operator Name	Description
// +	Addition	For adding two operands
// -	Subtraction	For subtracting two operands
// -expr	Unary Minus	For reversing the sign of the expression
// *	Multiplication	For multiplying two operands
// /	Division	For dividing two operands and give output in double
// ~/	Integer Division	For dividing two operands and give output in integer
// %	Modulus	Remainder After Integer Division
    // int a = 2;
    // int b = 3;

    // // Adding a and b
    // var c = a + b;
    // print("Sum  (a + b) = $c");

    // // Subtracting a and b
    // var d = a - b;
    // print("Difference (a - b) = $d");

    // // Using unary minus
    // var e = -d;
    // print("Negation -(a - b) = $e");

    // // Multiplication of a and b
    // var f = a * b;
    // print("Product (a * b) = $f");

    // // Division of a and b
    // var g = b / a;
    // print("Division (b / a) = $g");

    // // Using ~/ to divide a and b
    // var h = b ~/ a;
    // print("Quotient (b ~/ a) = $h");

    // // Remainder of a and b
    // var i = b % a;
    // print("Remainder (b % a) = $i");

//Increment and Decrement Operators
// ++var , --var -> pre inc 1
// var++, var-- -> post inc 0
// talk about pre and post decrements

    // int a = 1;
    // print(a++);
    // print(++a);
    // print(a--);
    // print(--a);

// compounding assignment opetation
// works with arthematic operator
    // double a = 10;
    // print(a/=5);
    // a = a*3;
    

// /??=	Assignment operator	Assign the value only if it is null.
    // int a = 5;
    // int b = 7;
    // var d;
    // d ??= a + b;
  
    // print("Assigning value only if d is null");
    // print("d??= a+b so d = $d \n");
    
    // // Again trying to assign value to d
    // d ??= a - b;
    //   // Value is not assign as it is not null
  
    // print("Assigning value only if d is null");
    // print("d??= a-b so d = $d");
    // print("As d was not null value was not updated");

// Relational operator
// perator Symbol	Operator Name	Description
// >	Greater than	Used to check which operand is bigger and gives result as boolean
// <	Less than	Used to check which operand is smaller and gives result as boolean
// >=	Greater than or equal to	Used to check which operand is bigger or equal and gives result as boolean
// <=	Less than or equal to	Used to check which operand is smaller or equal and gives result as boolean
// ==	Equal to	Used to check operands are equal to each other and gives result as boolean
// /!=	Not equal to	Used to check operand are not equal to each other and gives result as boolean
    // int a = 5;
    // int b = 3;

    // // Greater between a and b
    // var c = a > b;
    // print("a is greater than b (a > b) : $c");

    // // Smaller between a and b
    // var d = a < b;
    // print("a is smaller than b (a < b) : $d");

    // // Greater than or equal to between a and b
    // var e = a >= b;
    // print("a is greater than b (a >= b) : $e");

    // // Less than or equal to between a and b
    // var f = a <= b;
    // print("a is smaller than b (a <= b) : $f");

    // // Equality between a and b
    // var g = b == a;
    // print("a and b are equal (b == a) : $g");

    // // Unequality between a and b
    // var h = b != a;
    // print("a and b are not equal (b != a) : $h");

// is operator to check the type of variable
// Operator Symbol	Operator Name	Description
// is	is	Gives boolean value true if the object has a specific type
// is!	is not	Gives boolean value false if the object has a specific type

    // String a = 'GFG';
    // var b = 3;
    // var a = 1.8;
    // int b = a as int;
    // print(b);
    // print(b as String);
    // print(  );

    // Using is to compare
    // print(a is String);

    // Using is! to compare
    // print(b is! int);



// Logical operator
// Operator Type	Description
// &&	This is ‘and’, return true if all conditions are true
// ||	This is ‘or’. Return true if one of the conditions is true
// /!	This is ’not’. return false if the result is true and vice versa

    // int a = 5;
    // int b = 7;

    // // Using And Operator
    // bool c = a > 10 && b < 10;
    // print(c);

    // // Using Or Operator
    // bool d = a > 10 || b < 10;
    // print(d);

    // // Using Not Operator
    // bool e = !(a > 10);
    // print(e);

// ternary operator/ cpmtotopma; p[eratpr]
//     var age = 17;
//      // condition ? if true : if false
//     var c = (age < 18) ? "you cannot Vote" : "you can vote";
//     print(c);
}
