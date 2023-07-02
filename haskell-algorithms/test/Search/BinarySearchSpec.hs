module Search.BinarySearchSpec (spec) where

import Search.BinarySearch (binarySearch)
import Test.Hspec

spec :: Spec
spec = describe "binarySearch" $ do
  it "returns Nothing for an empty list" $ do
    binarySearch [] 'a' `shouldBe` Nothing
  it "returns Nothing for a list with one element that is not the searched element" $ do
    binarySearch ['b'] 'a' `shouldBe` Nothing
  it "returns Just 0 for a list with one element that is the searched element" $ do
    binarySearch ['a'] 'a' `shouldBe` Just 0
  it "returns Nothing for a list with two elements that are not the searched element" $ do
    binarySearch ['b', 'c'] 'a' `shouldBe` Nothing
  it "returns Just 0 for a list with two elements where the first element is the searched element" $ do
    binarySearch ['a', 'b'] 'a' `shouldBe` Just 0
  it "returns Just 1 for a list with two elements where the second element is the searched element" $ do
    binarySearch ['a', 'b'] 'b' `shouldBe` Just 1
  it "returns Nothing for a list with ten elements that are not the searched element" $ do
    binarySearch ['b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k'] 'a' `shouldBe` Nothing
  it "returns Just 7 for a list with ten elements where the seventh element is the searched element" $ do
    binarySearch ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j'] 'h' `shouldBe` Just 7
