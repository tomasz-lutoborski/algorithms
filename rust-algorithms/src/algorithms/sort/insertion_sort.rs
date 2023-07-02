pub fn insertion_sort(arr: &mut [i32]) {
    for i in 1..arr.len() {
        let mut j = i;
        while j > 0 && arr[j - 1] > arr[j] {
            arr.swap(j - 1, j);
            j -= 1;
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_insertion_sort() {
        let mut arr = [1, 5, 2, 4, 3];
        insertion_sort(&mut arr);
        assert_eq!(arr, [1, 2, 3, 4, 5]);
    }
}
