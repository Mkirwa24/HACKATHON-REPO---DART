# Palindrome Checker

**File:** palindrome_checker.dart

### Overview

The palindrome checker determines if a given string or number is a palindrome. A palindrome is a sequence that reads the same backward as forward.

### Functions

#### `isPalindrome(String input): bool`

- **Description:** Checks if the provided string is a palindrome. The function first cleans the string by removing all non-alphanumeric characters and converting it to lowercase. It then compares the cleaned string to its reversed version.
- **Parameters:** 
  - `input` - A string to check for palindrome properties.
- **Returns:** 
  - `true` if the cleaned string is a palindrome, `false` otherwise.
- **Example Usage:**
  ```dart
  print(isPalindrome("A man, a plan, a canal, Panama")); // Output: true
  print(isPalindrome("No lemon, no melon")); // Output: true
  print(isPalindrome("Hello, World!")); // Output: false


# Sorting Algorithms

This project implements two fundamental sorting algorithms in Dart: Bubble Sort and Quick Sort. Sorting algorithms are used to arrange a list of integers in ascending order. Each algorithm has its own approach and efficiency characteristics. Below are detailed explanations of each algorithm.

## Bubble Sort

**File:** sorting_algorithm.dart

### Overview

Bubble Sort is a simple comparison-based sorting algorithm. It repeatedly steps through the list, compares adjacent elements, and swaps them if they are in the wrong order. This process continues until the list is sorted. The largest unsorted element "bubbles up" to its correct position in each pass.

### How It Works

1. **Initialization:** Begin with the first element of the list.
2. **Comparison:** Compare each pair of adjacent elements.
3. **Swapping:** If the current element is greater than the next element, swap them.
4. **Iteration:** Repeat the process for each element, reducing the comparison range with each pass.
5. **Termination:** The algorithm stops when no more swaps are needed, indicating that the list is sorted.

## Quick Sort Algorithm

## overview
Quick Sort is a more efficient sorting algorithm based on the divide-and-conquer paradigm. It selects a 'pivot' element from the list and partitions the other elements into two sublists based on whether they are less than or greater than the pivot. The sublists are then sorted recursively.

## comparison
Bubble Sort: Easy to understand and implement but inefficient for large datasets due to its O(n^2) time complexity. Best suited for educational purposes and small lists.
Quick Sort: More complex but highly efficient with an average-case time complexity of O(n log n). Widely used for sorting large datasets due to its better performance.



## Basic Calculator


This section documents a basic calculator implemented in Dart, which performs arithmetic operations and handles multi-step calculations.

## Calculator Function

**File:** basic_calculator.dart

### Overview

The `calculate` function performs basic arithmetic operations based on the provided operator. It supports addition, subtraction, multiplication, division, and modulo operations. Additionally, it includes error handling for division by zero and invalid operators.

### How It Works

1. **Input Parameters:**
   - `num1`: The first number (operand).
   - `num2`: The second number (operand).
   - `operator`: A string representing the arithmetic operation (`+`, `-`, `*`, `/`, `%`).

2. **Operation Handling:**
   - **Addition (`+`):** Returns the sum of `num1` and `num2`.
   - **Subtraction (`-`):** Returns the difference between `num1` and `num2`.
   - **Multiplication (`*`):** Returns the product of `num1` and `num2`.
   - **Division (`/`):** Returns the quotient of `num1` divided by `num2`. Handles division by zero by printing an error message and returning `null`.
   - **Modulo (`%`):** Returns the remainder when `num1` is divided by `num2`. Handles division by zero similarly to division.
   - **Invalid Operator:** Prints an error message and returns `null` if the operator is not recognized.

## Multi-Step Calculation

## Overview
The multiStepCalculate function performs a series of arithmetic operations based on a list of operation maps. Each map contains two numbers and an operator, and the function calculates the result sequentially.

## Execution process step by step
#**Step 1**: Perform 10 + 5:

result becomes 15.0.
#**Step 2**: Use 15.0 as the first operand and perform 15 - 3:

result becomes 12.0.
#**Step 3**: Use 12.0 as the first operand and perform 12 * 4:

result becomes 48.0.
#**Step 4**: Use 48.0 as the first operand and perform 48 / 2:

result becomes 24.0.
**Final Output**: The function prints 24.0 as the result of the multi-step operations.

## Conclusion
The multiStepCalculate function processes a list of arithmetic operations in sequence, handling each operation one by one and using the result of the previous operation as the input for the next. If any operation results in an error (e.g., division by zero), it stops processing and prints an error message.