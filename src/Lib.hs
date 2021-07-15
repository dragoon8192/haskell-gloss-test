module Lib
    ( someFunc
    ) where
import Graphics.Gloss

window :: Display
window = InWindow "Hello, World!" (640,480) (100,100)

someFunc :: IO ()
someFunc = display window white $
           translate (-150) (-10) . scale 0.5 0.5 $ text "Hello, World!"
