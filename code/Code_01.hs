levenshtein' :: String -> String -> Int
levenshtein' "" s2 = length s2
levenshtein' s1 "" = length s1
levenshtein' s1 s2 = minimum
  [ levenshtein' ( init s1 ) s2 + 1
  , levenshtein' s1 ( init s2 ) + 1
  , levenshtein' ( init s1 ) ( init s2 ) + if last s1 == last s2 then 0 else 1
  ]