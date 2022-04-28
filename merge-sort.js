const arr = [1, 3, 5, 7, 9, 11, 14, 16, 2, 4, 6, 8, 10, 12, 13, 15, 17];

function merge(array, start, middle, end) {
    const lengthL = middle - start;
    const lengthR = end - middle + 1;

    const L = [];
    const R = [];

    for (let i = 0; i < lengthL; i++) {
        L[i] = array[start + i];
    }

    for (let i = 0; i < lengthR; i++) {
        R[i] = array[middle + i];
    }

    R[lengthR] = Infinity;
    L[lengthL] = Infinity;

    let i = 0;
    let j = 0;

    for (let k = start; k <= end; k++) {
        if (L[i] < R[j]) {
           array[k] = L[i];
           i++;
        } else {
            array[k] = R[j];
            j++;
        }

    }
}

merge(arr, 0, Math.floor(arr.length / 2), arr.length - 1);
console.log(arr);
