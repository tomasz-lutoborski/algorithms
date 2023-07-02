module Search.BinarySearch
  ( binarySearch,
  )
where

import Sort.InsertionSort (insertionSort)

binarySearch :: Ord a => [a] -> a -> Maybe Int
binarySearch [] _ = Nothing
binarySearch xs searched =
  let sorted = insertionSort xs
   in binarySearch' sorted searched 0 (length sorted - 1)

binarySearch' :: Ord a => [a] -> a -> Int -> Int -> Maybe Int
binarySearch' xs searched start end
  | start > end = Nothing
  | searched == item = Just middle
  | searched < item = binarySearch' xs searched start (middle - 1)
  | searched > item = binarySearch' xs searched (middle + 1) end
  where
    middle = (start + end) `div` 2
    item = xs !! middle
