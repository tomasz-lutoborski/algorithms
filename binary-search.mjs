import {randomArr} from "./random-arr.mjs";
import {selectionSort} from "./selection-sort.mjs";

function binarySearch(array, arrayLength, searchedValue) {
    let l = 0;
    let r = arrayLength - 1;

    while (l < r) {
        let middle = Math.floor((r + l) / 2);
        if (searchedValue < array[middle]) {
            r = middle - 1;
        } else if (searchedValue > array[middle]) {
            l = middle + 1;
        } else {
            return middle;
        }
    }
    return 'not found';
}
const arr = randomArr(200, 100);
selectionSort(arr);
console.log(binarySearch(arr, arr.length, 20));
