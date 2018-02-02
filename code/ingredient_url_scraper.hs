coolinarka :: String
coolinarka = "https://www.coolinarika.com"

ingredientURLsScraper :: Scraper Text [URL]
ingredientURLsScraper = do
  links <- attrs "href" $
    "ul" // "li" // "h3" // "a" @: [match ( \atr val -> atr == "href" && "/namirnica/" `isPrefixOf` pack val)]
  maybe (fail "no links") pure $ parse links
  where
    parse = traverse (importURL . (coolinarka ++) . unpack)