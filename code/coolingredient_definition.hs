data CoolIngredient = CoolIngredient
  { name :: Text
  , slug :: Text
  , image :: Text
  , description :: Text
  } deriving ( Eq, Show, Generic )

instance ToRecord CoolIngredient
instance FromRecord CoolIngredient