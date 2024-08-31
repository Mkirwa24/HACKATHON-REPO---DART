// Function to perform basic arithmetic operations
double? calculate(double num1, double num2, String operator) {
  switch (operator) {
    case '+':
      return num1 + num2; // Addition
    case '-':
      return num1 - num2; // Subtraction
    case '*':
      return num1 * num2; // Multiplication
    case '/':
      if (num2 == 0) {
        print('Error: Division by zero is not allowed.');
        return null; // Error handling for division by zero
      }
      return num1 / num2; // Division
    case '%':
      if (num2 == 0) {
        print('Error: Division by zero is not allowed.');
        return null; // Error handling for division by zero
      }
      return num1 % num2; // Modulo
    default:
      print('Error: Invalid operator.');
      return null; // Error handling for invalid operators
  }
}

// Function to handle multi-step operations
double? multiStepCalculate(List<Map<String, dynamic>> operations) {
  double? result;

  for (var operation in operations) {
    double num1 = (operation['num1'] as num).toDouble(); // Convert to double
    double num2 = (operation['num2'] as num).toDouble(); // Convert to double
    String operator = operation['operator'];

    // If result is null, it's the first operation; otherwise, use the current result as num1
    result = result == null ? calculate(num1, num2, operator) : calculate(result, num2, operator);

    // If an error occurred (result is null), break out of the loop
    if (result == null) {
      print('Error occurred during calculations.');
      break;
    }
  }

  return result;
}

void main() {
  // Basic arithmetic operation test cases
  print(calculate(10, 5, '+')); 
  print(calculate(10, 5, '-')); 
  print(calculate(10, 5, '*')); 
  print(calculate(10, 5, '/')); 
  print(calculate(10, 5, '%')); 

  // Division by zero test case
  print(calculate(10, 0, '/')); 

  // Multi-step operation test case
  List<Map<String, dynamic>> operations = [
    {'num1': 10, 'num2': 5, 'operator': '+'}, 
    {'num1': 15, 'num2': 3, 'operator': '-'}, 
    {'num1': 12, 'num2': 4, 'operator': '*'}, 
    {'num1': 48, 'num2': 2, 'operator': '/'}, 
  ];

  print(multiStepCalculate(operations)); 
}