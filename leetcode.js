var longestCommonPrefix = function(strs) {
    let longestPrefix = strs[0];
    for (let str of strs) {
        let newPrefix = "";
        for (let n = 0; n < str.length; n++) {
            if (longestPrefix[n] === str[n]) {
                newPrefix += str[n];
                break;
            }
        }
        longestPrefix = newPrefix;
    }
    return longestPrefix;
};

const strs1 = ['forma', 'formuła', 'formalina', 'formułować'];
const strs2 = ['kwiatek', 'kasztan', 'szyszka'];
const strs3 = ['cir', 'car'];

// console.log(longestCommonPrefix(strs1));
console.log(longestCommonPrefix(strs3));
