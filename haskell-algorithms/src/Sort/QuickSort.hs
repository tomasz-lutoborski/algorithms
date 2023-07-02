module Sort.QuickSort (quickSort) where

quickSort :: Ord a => [a] -> [a]
quickSort [] = []
quickSort (x : xs) = quickSort left ++ [x] ++ quickSort right
  where
    left = filter (< x) xs
    right = filter (>= x) xs
