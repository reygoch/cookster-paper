coolinarka :: String
coolinarka = "https://www.coolinarika.com"

type HTML = Text

ingredientURLsScraper :: Scraper HTML [URL]
ingredientURLsScraper = do
  links <- attrs "href" $
    "ul" // "li" // "h3" // "a" @: [match helper]
  maybe (fail "no links") pure $ parse links
  where
    parse = traverse (importURL . (coolinarka ++) . unpack)
    helper atr val = atr == "href" && "/namirnica/" `isPrefixOf` pack val