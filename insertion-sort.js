const arr = [3, 4, 30, 1, 45, 34, 1094, 6, 4, 90, 84, 2];


for (let j = 1; j < arr.length; j++) {
    const key = arr[j];
    let i = j - 1;
    while (i >= 0 && arr[i] > key) {
        arr[i+1] = arr[i];
        i -= 1;
    }
    arr[i + 1] = key;
}
console.log(arr);
