module DisplayTest
    ( displayTest
    ) where
import Graphics.Gloss

displayTest :: IO ()
displayTest = display window white $
           translate (-150) (-10) . scale 0.5 0.5 $ text "Hello, World!"
             where
              window :: Display
              window = InWindow "Hello, World!" (640,480) (100,100)