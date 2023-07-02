module Sort.MergeSortSpec (spec) where

import Sort.MergeSort (mergeSort)
import Test.Hspec

spec :: Spec
spec = describe "mergeSort" $ do
  it "returns empty list given empty list" $ do
    let result = mergeSort [] :: [Int]
    result `shouldBe` []
  it "returns sorted list given unsorted list" $ do
    let result = mergeSort [3, 2, 1] :: [Int]
    result `shouldBe` [1, 2, 3]
  it "returns sorted list given sorted list" $ do
    let result = mergeSort [1, 2, 3] :: [Int]
    result `shouldBe` [1, 2, 3]
  it "returns sorted list given list with duplicates" $ do
    let result = mergeSort [1, 2, 3, 2, 1] :: [Int]
    result `shouldBe` [1, 1, 2, 2, 3]
  it "returns sorted list given list with negative numbers" $ do
    let result = mergeSort [1, 2, 3, -2, -1] :: [Int]
    result `shouldBe` [-2, -1, 1, 2, 3]
  it "returns sorted list given list with negative numbers and duplicates" $ do
    let result = mergeSort [1, 2, 3, -2, -1, 1, 2, 3] :: [Int]
    result `shouldBe` [-2, -1, 1, 1, 2, 2, 3, 3]
  it "returns sorted list given list with negative numbers and duplicates" $ do
    let result = mergeSort [1, 2, 3, -2, -1, 1, 2, 3] :: [Int]
    result `shouldBe` [-2, -1, 1, 1, 2, 2, 3, 3]
  it "returns sorted list given list with negative numbers and duplicates" $ do
    let result = mergeSort [1, 2, 3, -2, -1, 1, 2, 3] :: [Int]
    result `shouldBe` [-2, -1, 1, 1, 2, 2, 3, 3]
