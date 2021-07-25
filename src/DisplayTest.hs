module DisplayTest
    ( displayTest
    ) where
import Graphics.Gloss
import Data.Fixed
import Data.List

displayTest :: IO ()
displayTest = animate window white animeCircle
   where
    window :: Display
    window = InWindow "Hello, World!" (640,480) (0,0)
animeCircle :: Float -> Picture
animeCircle t = pictures . map (circle . (*100)) . take 10 . iterate (+ tCycle) $ tMod
  where
    tCycle = 1.0
    tMod = mod' t tCycle
           -- translate (-150) (-10) . scale 0.5 0.5 $ text "Hello, World!"
