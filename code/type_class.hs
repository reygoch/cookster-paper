class Num a => FooBar a where
  foo :: a -> a -> a
  bar :: a -> a -> a

instance FooBar Int where
  foo a b = a + b
  bar a b = a - b