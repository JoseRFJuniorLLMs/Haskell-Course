# Homework 1

## Validating Credit Card Numbers -> credit-card.hs
### Introduction
Very simple task divided in four functions. Index of functions:
- toDigits
- toDigitsRev
- doubleEveryOther
- sumDigits
- validate
This exercises works on lists and recursion, see the description below. Its meant to be run on the GHCI.
### toDigits
```haskell
toDigits :: Integer -> [Integer]
```
Get the integer input then converts into a list of integers.
### toDigitsRev
```haskell
toDigitsRev :: Integer -> [Integer]
```
Same thing from the function above, but in a reverse way.
### doubleEveryOther
```haskell
doubleEveryOther :: [Integer] -> [Integer]
```
Double all the numbers in the even position counting from the tail to the head. I did not use the toDigitsRev function. Instead I find a way using only the toDigits func.
### validate
```haskell
validate :: Integer -> Bool
```
Uses all function above and return if the number is valid by the modulo 10.
## The Tower of Hanoi
To do... 
