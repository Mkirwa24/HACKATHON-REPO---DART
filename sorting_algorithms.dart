// Bubble Sort implementation
List<int> bubbleSort(List<int> list) {
  int n = list.length;
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (list[j] > list[j + 1]) {
        // Swap elements
        int temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
      }
    }
  }
  return list;
}

// Quick Sort implementation
List<int> quickSort(List<int> list) {
  if (list.length <= 1) {
    return list;
  }
  int pivot = list[list.length ~/ 2];
  List<int> less = list.where((element) => element < pivot).toList();
  List<int> equal = list.where((element) => element == pivot).toList();
  List<int> greater = list.where((element) => element > pivot).toList();
  return quickSort(less) + equal + quickSort(greater);
}


void main() {
  List<int> numbers = [34, 7, 23, 32, 5, 62, 100, 3, 45, 10, 90, 15, 4];
  print('Original List: $numbers');
  print('Bubble Sorted: ${bubbleSort([...numbers])}');
  print('Quick Sorted: ${quickSort([...numbers])}'); 
}