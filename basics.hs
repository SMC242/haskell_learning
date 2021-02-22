-- Following this tutorial until I get bored: http://learnyouahaskell.com/starting-out

-- Number operations are as usual
-- Negative numbers need parenthesis
four = 6 + (-2)

-- Logical operators
-- && for AND
-- || for OR
-- not for NOT

-- Comparisons
-- == is EQUALS
-- /= is NOT EQUALS
-- You can only compare variables of the same type

-- Infix vs prefix functions
-- I'm used to prefix function which are like `f(x)`
-- In Haskell, brackets aren't used for the first function call but wrappers will have brackets
-- E.G g( f x )
-- Multiple parameters are delimited by spaces
-- E.G f( x y z )
-- An infix function is when the function is in between the arguments
-- All operators are infix functions
-- E.G 1 + 1

-- The tutorial is talking about max and min and I'm bored now
-- ... Let's work out how to make max and min!
myMin :: Integer -> Integer -> Integer
myMin first second = if first < second then first else second

myMax :: Integer -> Integer -> Integer
myMax first second = if first > second then first else second

-- I learned 3 things:
-- 1. The type signiture comes before the function. That's the funny colon thingy
-- 2. When typing for multiple arguments, you put an arrow in between the arguments
-- 3. You don't write `return`. You declare that the function's value is ...
{-
Python function translated to Haskell for example
def f(x: int, y: float) -> float:
    return x + y

Haskell:
f :: Integer -> Floating -> Floating
f x y = x + y
-}
-- This is a whole new way of thinking. It's very cool

-- switch/ELSEIF statements can be done with "guards". I'm sure I'll learn more about them later but here's an example
gradeScore :: Integer -> String
gradeScore percentage 
    | percentage > 70 = "A"
    | percentage > 60 = "B"
    | percentage > 50 = "C"
    | percentage > 40 = "D"
    | otherwise = "F"

-- An example of composition
-- Composition is when you use smaller functions to build a more complex function
-- `-- | docstring here`  is the syntax for docstrings
-- | Gets the sum of two numbers doubled
doubleUs x y = doubleMe x + doubleMe y
doubleMe x = x + x  
-- Haskell has forward declarations

-- Lists
-- ++ joins two lists
-- : is preferred for list concatenation as it adds to the head of the list
-- instead of the tail
-- Indexing is done with a double bang
-- E.G [1, 2, 3] !! 1 will output 2
-- It is possible to get an index out of range error
-- Lists seem runtime error prone. I should be careful with those
thing = head []  -- this will error
data IsListEmptyResult = String | Num
-- | checking for an empty list
isListEmpty :: (any a) [a] -> IsListEmptyResult
isListEmpty l
    | null l = "EMPTY"
    | otherwise = length l
