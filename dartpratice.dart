/*dart
import 'dart:io';

void main() {    
    stdout.write("What's your name? ");
    String name = stdin.readLineSync();

    print("Hi, $name! What is your age?");
    int age = int.parse(stdin.readLineSync());

    int yearsToHunderd = 100 - age;
    print("$name, You have $yearsToHunderd years to be 100");
}
___________________________________________________________________
2.
import 'dart:io';

void main() {    
    stdout.write("Hi, please choose a number: ");
    int number = int.parse(stdin.readLineSync()!);
    
    if (number % 2 == 0) {
        print("Chosen number is even");
    }
    else {
        print("Chosen number is odd");
    }
}
-----------------------------------------------------------------------
3.
void main() {
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, -34, 55, -89];
  int count=0;
  int pos=0;
  List<int> prime=[];
  int small,large;
  a.sort();
  small=a.first;
  large=a.last;
//Display the square of all the numbers
print("Squares of the List $a");
  for (var i in a) {
      print(i*i);
  }
//Display the count of positive numbers and negative numbers
   for (var i in a) {
    if(i<0)
      count++;
  }
  pos=a.length-count;
  
  print("\nThe no. of negative elements is $count and postive elements is $pos");
//Display all the numbers that are not prime numbers.
  for (var i in a) {
      Set<int> b={for (var j = 1; j <= i; j++) if (i % j != 0) i};
     prime.addAll(b.toList());
  }
  print("\nThe prime numbers are: $prime");
//Print out all the elements of the array that are less than 20 but greater than 10
  print("\nElements that are less than 20 but greater than 10");
  print([for (var i in a) if(i>10 && i<20) i]);
//Display the largest and smallest element 
  print("Smallest element is $small and largest element is $large");
}
_________________________________________________________________________
4.
void main(){
int num = 10;
  for (int i = 1; i < 10; i++) {
    print("$num * $i = ${num * i}");
  }
}
___________________________________________________________________________
5.
void main(){
int num = 10;
  for (int i = 1; i <= 10; i++) {
      for (int j = 1; j <= 10; j++){
        print("$i * $j = ${j * i}");}
    print("\n");
    
  }
}
_____________________________________________________________________________
//leap year
void main(){
bool isLeapYear(int year) =>
    (year % 4 == 0) && ((year % 100 != 0) || (year % 400 == 0));
if(isLeapYear(2000) == true)
  print("It's leap year");
 else
 print("It's not leap year");
}
_____________________________________________________________________________
//convert number to words
import 'dart:io';

void main() {
  stdout.write('Enter a number: ');
  int number = int.parse(stdin.readLineSync()!);
  String wordValue = getWordValue(number);
  print('$number in words is: $wordValue');
}

String getWordValue(int number) {
  List<String> digits = [
    '', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine'
  ];
  List<String> tens = [
    '', '', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety'
  ];
  List<String> teens = [
    'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen',
    'sixteen', 'seventeen', 'eighteen', 'nineteen'
  ];
  
  String word = '';
  
  if (number == 0) {
    word = 'zero';
  } else if (number < 0) {
    word = 'minus ' + getWordValue(-number);
  } else if (number >= 1000) {
    word = getWordValue(number ~/ 1000) + ' thousand ' + getWordValue(number % 1000);
  } else if (number >= 100) {
    word = digits[number ~/ 100] + ' hundred ' + getWordValue(number % 100);
  } else if (number >= 20) {
    word = tens[number ~/ 10] + ' ' + digits[number % 10];
  } else if (number >= 10) {
    word = teens[number % 10];
  } else {
    word = digits[number];
  }
  
  return word;
}
____________________________________________________________________________
//check the type of triangle
import 'dart:io';

void main() {
  stdout.write('Enter the first side of the triangle: ');
  double side1 = double.parse(stdin.readLineSync()!);
  
  stdout.write('Enter the second side of the triangle: ');
  double side2 = double.parse(stdin.readLineSync()!);
  
  stdout.write('Enter the third side of the triangle: ');
  double side3 = double.parse(stdin.readLineSync()!);
  
  if (isTriangle(side1, side2, side3)) {
    if (isEquilateral(side1, side2, side3)) {
      print('The triangle is equilateral');
    } else if (isIsosceles(side1, side2, side3)) {
      print('The triangle is isosceles');
    } else {
      print('The triangle is scalene');
    }
  } else {
    print('The given sides do not form a triangle');
  }
}

bool isTriangle(double a, double b, double c) {
  if (a + b > c && a + c > b && b + c > a) {
    return true;
  } else {
    return false;
  }
}

bool isEquilateral(double a, double b, double c) {
  if (a == b && b == c) {
    return true;
  } else {
    return false;
  }
}

bool isIsosceles(double a, double b, double c) {
  if (a == b || b == c || c == a) {
    return true;
  } else {
    return false;
  }
}
__________________________________________________________________________
9.import 'dart:io';

void main() {
  stdout.write('Enter the list of names, separated by commas: ');
  String? input = stdin.readLineSync();
  
  if (input == null || input.isEmpty || !input.contains(',')) {
    print('Invalid input');
    return;
  }
  
  List<String> names = input.split(',');
  
  // Count the number of consonants and vowels
  int numConsonants = 0;
  int numVowels = 0;
  RegExp alphabetRegex = RegExp(r'[a-zA-Z]');
  
  for (String name in names) {
    Iterable<Match> matches = alphabetRegex.allMatches(name);
    for (Match match in matches) {
      String ch = match.group(0)!.toLowerCase();
      if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u') {
        numVowels++;
      } else {
        numConsonants++;
      }
    }
  }
  
  print('Number of vowels: $numVowels');
  print('Number of consonants: $numConsonants');
  
  // Write the highest and lowest frequency alphabet
  Map<String, int> frequency = {};
  RegExp alphabetRegex = RegExp(r'[a-zA-Z]');
  
  for (String name in names) {
    Iterable<Match> matches = alphabetRegex.allMatches(name);
    for (Match match in matches) {
      String ch = match.group(0)!.toLowerCase();
      if (frequency.containsKey(ch)) {
        frequency[ch] = frequency[ch]! + 1;
      } else {
        frequency[ch] = 1;
      }
    }
  }
  
  if (frequency.isEmpty) {
    print('No alphabets found');
  } else {
    String? highestFrequency = frequency.keys.reduce((a, b) => frequency[a]! > frequency[b]! ? a : b);
    String? lowestFrequency = frequency.keys.reduce((a, b) => frequency[a]! < frequency[b]! ? a : b);

    print('Highest frequency alphabet: $highestFrequency (${frequency[highestFrequency]} times)');
    print('Lowest frequency alphabet: $lowestFrequency (${frequency[lowestFrequency]} times)');
  }
  
  // Convert all the names to uppercase
  List<String> uppercaseNames = [];

  for (String name in names) {
    uppercaseNames.add(name.toUpperCase());
  }

  print('Uppercase names: ${uppercaseNames.join(', ')}');
}
//Frequency of character

import 'dart:io';

void main(){
  String str = "";
  print("Enter your string");
  str=stdin.readLineSync()!;
  Map<String, int> map = {};
  for(int i = 0; i < str.length; i++){
    int count = map[str[i]] ?? 0;
     map[str[i]] = count + 1;
  }
  print(map);
}
_________________________________________________________
void main() {
  print('Enter a string:');
  String input = '';
  
  // Read user input
  try {
    input = stdin.readLineSync()!;
  } catch (e) {
    print('Error reading input: $e');
    return;
  }
  
  // Create a map to store character frequencies
  Map<String, int> charFrequencies = {};
  
  // Calculate character frequencies
  for (int i = 0; i < input.length; i++) {
    String char = input[i];
    charFrequencies[char] = charFrequencies.containsKey(char) ? charFrequencies[char]! + 1 : 1;
  }
  
  // Print character frequencies
  print('Character frequencies:');
  charFrequencies.forEach((char, frequency) {
    print('$char: $frequency');
  });
}
//fibinacci
int fibonacci(int n) => n <= 2 ? 1 : fibonacci(n - 2) + fibonacci (n - 1);
void main() {
  String output = "";
  for (int i = 1; i <= 16; ++i) {
    output += fibonacci(i).toString() + ", ";
  }
  print(output + "...");
}
//palindrome
bool isPalindrome(String input) {
  String cleanedInput = input.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
  String reversedInput = cleanedInput.split('').reversed.join('');

  return cleanedInput == reversedInput;
}

void main() {
  print("Enter a string:");
  String input = stdin.readLineSync()!;

  if (isPalindrome(input)) {
    print("$input is a palindrome.");
  } else {
    print("$input is not a palindrome.");
  }
}
*/
