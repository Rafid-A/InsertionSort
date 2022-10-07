var unsortedIntegers = [String]()

func readWords() -> [String] {
var line : String?
repeat {
    line = readLine()?.lowercased()
    if line != nil {
        unsortedIntegers.append(line!)
    }
} while line != nil
return unsortedIntegers
}

func insertionSort(unsortedIntegers: [String]) -> [String] {

    var sortingIntegers = readWords()
    for i in 1..<sortingIntegers.count { //The outer loop looks at each of the elements in the array in turn; this is what picks the top-most number from the pile. The outer loop starts at index 1, not 0. Moving the very first element from the pile to the sorted portion doesn't actually change anything, so I skipped it.
        var j = i
        let tmp = sortingIntegers[j]
            //The inner loop looks at the element at position i. This is the number at the top of the pile, and it may be smaller than any of the previous elements. The inner loop steps backwards through the sorted array; every time it finds a previous number that is larger, it swaps them. When the inner loop completes, the beginning of the array is sorted again, and the sorted portion has grown by one element.
            while j > 0 && tmp < sortingIntegers[j-1] {
                sortingIntegers[j] = sortingIntegers[j-1]
                j -= 1
            }
            sortingIntegers[j] = tmp
    }
    return sortingIntegers
}
let sortedIntegers = insertionSort(unsortedIntegers: unsortedIntegers)

for element in sortedIntegers {
    print(element)
} 
