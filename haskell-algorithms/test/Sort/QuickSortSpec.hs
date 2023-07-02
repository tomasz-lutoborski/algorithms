module Sort.QuickSortSpec (spec) where

import Sort.QuickSort (quickSort)
import Test.Hspec

spec :: Spec
spec = describe "quickSort" $ do
  it "returns empty list given empty list" $ do
    let result = quickSort [] :: [Int]
    result `shouldBe` []
  it "returns sorted list given unsorted list" $ do
    let result = quickSort [3, 2, 1] :: [Int]
    result `shouldBe` [1, 2, 3]
  it "returns sorted list given sorted list" $ do
    let result = quickSort [1, 2, 3] :: [Int]
    result `shouldBe` [1, 2, 3]
  it "returns sorted list given list with duplicates" $ do
    let result = quickSort [1, 2, 3, 2, 1] :: [Int]
    result `shouldBe` [1, 1, 2, 2, 3]
  it "returns sorted list given list with negative numbers" $ do
    let result = quickSort [1, 2, 3, -2, -1] :: [Int]
    result `shouldBe` [-2, -1, 1, 2, 3]
  it "returns sorted list given list with negative numbers and duplicates" $ do
    let result = quickSort [1, 2, 3, -2, -1, 1, 2, 3] :: [Int]
    result `shouldBe` [-2, -1, 1, 1, 2, 2, 3, 3]
  it "returns sorted list given list with negative numbers and duplicates" $ do
    let result = quickSort [1, 2, 3, -2, -1, 1, 2, 3] :: [Int]
    result `shouldBe` [-2, -1, 1, 1, 2, 2, 3, 3]
  it "returns sorted list given list with negative numbers and duplicates" $ do
    let result = quickSort [1, 2, 3, -2, -1, 1, 2, 3] :: [Int]
    result `shouldBe` [-2, -1, 1, 1, 2, 2, 3, 3]
