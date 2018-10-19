-- Title: Credit Card verification
-- Author: Amadeus Dabela Lanoa
-- Desc.: First exercise of the CSI-194 Haskell Course,
-- the Credit-Card digit verification

-- Ex1: Converts a 'n' > 0 input to a list of integers
toDigits :: Integer -> [Integer]
toDigits 0 = []
toDigits n 
    | n < 0     = []
    | otherwise =  toDigits (n `div` 10) ++ [n `mod` 10]

-- Ex2: Same conversion in reverse mode
toDigitsRev :: Integer -> [Integer]
toDigitsRev 0 = []
toDigitsRev n
    | n < 0     = []
    | otherwise = [n `mod` 10] ++ toDigitsRev(n `div` 10)

-- Ex3: Double the second from last, the fourth to last ..
doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther [] = []
doubleEveryOther (n:[]) = [n]
doubleEveryOther (n:x:l) = (n) : (x * 2) : doubleEveryOther l

-- Ex4 : Sum of all digits
sumDigits :: [Integer] -> Integer
sumDigits (x:[]) = x
sumDigits (x:y:z) = (x + y) + sumDigits z

-- Ex5: Validate the number
validate :: Integer -> Bool
validate x = do
    let y = sumDigits(doubleEveryOther(toDigits x))
    if y `mod` 10 == 0 then True else False
