import {randomArr} from "./random-arr.mjs";
const arr = randomArr(1000, 10000);

export function selectionSort(array) {
    for (let i = 0; i < array.length; i++) {
        let currMin = i;
        for (let j = i+1; j < array.length; j++) {
             if (array[j] < array[currMin]) {
                currMin = j;
             }
        }
        if (currMin !== i) {
            [array[i], array[currMin]] = [array[currMin], array[i]];
        }
    }
}
