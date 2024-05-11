public class BubbleSort {
    // Method to perform Bubble Sort
    public static void bubbleSort(Integer[] arr) {
        Integer n = arr.size();
        for(Integer i = 0; i < n-1; i++) {
            for(Integer j = 0; j < n-i-1; j++) {
                if(arr[j] > arr[j+1]) {
                    // Swap arr[j] and arr[j+1]
                    Integer temp = arr[j];
                    arr[j] = arr[j+1];
                    arr[j+1] = temp;
                }
            }
        }
    }
    
    // Method to print the array
    public static void printArray(Integer[] arr) {
        for(Integer i = 0; i < arr.size(); i++) {
            System.debug(arr[i]);
        }
    }
    
    // Example usage
    public static void main(String []args) {
        Integer[] arr = new Integer[]{64, 34, 25, 12, 22, 11, 90};
        bubbleSort(arr);
        System.debug('Sorted array:');
        printArray(arr);
    }
}
