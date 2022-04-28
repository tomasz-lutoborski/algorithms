function karatsuba(x, y)
{
    if (x < 10 || y < 10) {
        return x * y;
    } else {
        const n = Math.max(x.toString().length, y.toString().length);
        const half = Math.floor(n / 2);
        const a = Math.floor(x  / (10 ** half));
        const b = x % (10 ** half);
        const c = Math.floor(y  / (10 ** half));
        const d = y % (10 ** half);
        const ac = karatsuba(a, c);
        const bd = karatsuba(b, d);
        const ad_plus_bd = karatsuba((a+b), (c+d)) - ac - bd;
        return ac * (10 ** (2 * half)) + (ad_plus_bd * (10 ** half)) + bd;
    }

}
console.log(karatsuba(25, 35));
