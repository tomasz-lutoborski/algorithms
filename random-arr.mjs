export function randomArr(numOfElements, maxValue) {
    const arr = [];
    for (let i = 0; i < numOfElements; i++) {
         arr.push(Math.floor(Math.random() * maxValue));
    }
    return arr;
}
