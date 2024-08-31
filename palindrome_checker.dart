
// Function to check if a string is a palindrome
bool isPalindrome(String input) {
  // Remove spaces, punctuation, and convert to lower case
  String cleanedInput = input.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();

  // Compare the cleaned string to its reverse
  String reversedInput = cleanedInput.split('').reversed.join('');
  return cleanedInput == reversedInput;
}


// Function to check if a number is a palindrome
bool isNumberPalindrome(int number) {
  String numStr = number.toString();
  return isPalindrome(numStr);
}


void main() {
  print(isPalindrome("A man, a plan, a canal, Panama")); 
  print(isPalindrome("No lemon, no melon"));
  print(isPalindrome("Hello, World!")); 
  print(isNumberPalindrome(12321)); 
  print(isNumberPalindrome(12345)); 
  print(isNumberPalindrome(4554));
}