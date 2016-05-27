module LeapYear ( isLeapYear )
where

isDivisibleBy :: Integral a => a -> a -> Bool
isDivisibleBy x y = x `mod` y == 0

isLeapYear :: Integral a => a -> Bool
isLeapYear year
  | year `isDivisibleBy` 400 = True
  | year `isDivisibleBy` 100 = False
  | year `isDivisibleBy` 4   = True
  | otherwise                = False
