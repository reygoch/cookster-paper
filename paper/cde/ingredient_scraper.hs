ingredientScraper :: Scraper HTML CoolIngredient
ingredientScraper = do
  n <- text $ "div" @: ["id" @= "content_header"] // "h1"
  i <- attr "src" $ "img" @: ["id" @= "content_image"]
  d <- (T.unwords . T.words . strip) <$> text ( "div" @: ["id" @= "content_header"] // "div" @: [hasClass "lead"] )
  pure $ CoolIngredient n ( U.slug n ) ( original i ) d