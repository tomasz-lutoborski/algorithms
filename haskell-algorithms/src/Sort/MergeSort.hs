module Sort.MergeSort
  ( mergeSort,
  )
where

mergeSort :: Ord a => [a] -> [a]
mergeSort [] = []
mergeSort [x] = [x]
mergeSort xs =
  let (left, right) = splitAt (length xs `div` 2) xs
   in merge (mergeSort left) (mergeSort right)

merge :: Ord a => [a] -> [a] -> [a]
merge [] [] = []
merge xs [] = xs
merge [] ys = ys
merge (x : xs) (y : ys)
  | x < y = x : merge xs (y : ys)
  | otherwise = y : merge (x : xs) ys
