import 'dart:io';

//Create a function that takes two numbers as input and returns the sum of those numbers.
int SumOfNumbers()
{
  int num1, num2;
  // just a border to make result readable
  print("========== Sum Of Numbers ==========");

  // ask for input from user 
  print ("Enter first number");
  // read user input
  num1 = int.parse(stdin.readLineSync()!);
  // ask for input from user 
  print ("Enter second number");
  // read user input
  num2 = int.parse(stdin.readLineSync()!);

  int sum = num1 + num2;
  // this function has a return type but no parameters
  return sum;
}

//Write a program that uses a for loop to print out the numbers from 1 to 10.
void forLoop()
{
  // just a border to make result readable
  print("============ For Loop ============");

  for(int i = 1; i <= 10; i++)
  {
    print(i);
  }
  
}

//Create a program that uses a switch statement to check for different string values and output a response based on the value.
void switchStatement()
{
  // just a border to make result readable
  print("========== Switch Statement ==========");

  String name = "Joyce";
  switch(name)
  {
    case "judy":
  print("Hello Judy");
  break;

  case "Ken":
  print("Hello Ken");
  break;

  case "Joyce":
  print("Hello Joyce");
  break;

  default:
  print("Who are you ?");
  }

}

//Create a program that uses a while loop to print out the numbers from 20 to 10.
void whileLoop()
{
  // just a border to make result readable
  print("=========== The While Loop ===========");

  int number = 20;
  while(number >= 10)
  {
    print(number--);
  }
}

//Create a program that uses an if-else statement to check if a number is even or odd and output the result.
void ifElseStatement()
{
  // just a border to make result readable
  print("========== If Else Statement ==========");
  //prompt user for input
  print ("Enter a number to check.");
  int number = int.parse(stdin.readLineSync()!);
  if(number/2 == 0)
  {
    print("-<$number> is an even number");
  }
  else
  {
    print("-<$number> is an odd number");
  }
}

//Create a program that takes a list of numbers as input and outputs the largest number in the list.
void listOfNumbers()
{
  // just a border to make result readable
  print("============== Lists ==============");

  // creating a list 
  List <int> listOfNumbers = [500, 45, 80, 31, 9];

  //Sorting numbers on the list
  listOfNumbers.sort();

  // Find largest an dsmallest numbers
  
    print("Largest number in list is: ${listOfNumbers.last}");
    print("Smallest number in list is: ${listOfNumbers.first}");

  

}
//Write a program that uses a try-catch block to catch an exception and output an error message.
void withdrawalAmount(int amount)
{
  // just a border to make result readable
  print("========== Try Catch Error Handling ==========");
  
  if (amount <= 0) {
    throw FormatException("You cannot withdraw zero or negative funds");
  }
  else
  {
    print("You have withdrawn: $amount");
  }
}

void main()
{

  // Total sum of 2 numbers
  int totalSum = SumOfNumbers();
  print("sum of nuimbers is: ${totalSum}");
  print("");

  //For loop
  forLoop();
  print("");

  //Switch case statement 
  switchStatement();
  print("");

  //While loop task
  whileLoop();
  print("");

  //If else task
  ifElseStatement();
  print("");

  // largest number in the list
  listOfNumbers();
  print("");
  
  //try catch task
  try
  {
    print("Enter Amount to Withraw");
    int amount = int.parse(stdin.readLineSync()!);
    withdrawalAmount(amount);
  }
  catch (e)
  {
    print(e);
  }
  print("");
  print("_____________________END___________________");
}