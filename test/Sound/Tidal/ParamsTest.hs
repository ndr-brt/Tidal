{-# LANGUAGE OverloadedStrings #-}

module Sound.Tidal.ParamsTest where

import Test.Microspec
import TestUtils
import Sound.Tidal.Core
import Sound.Tidal.Params
import Sound.Tidal.Pattern

run :: Microspec ()
run =
  describe "delay" $ do
    it "aaaaaaa" $ do
      compareP (Arc 0 1)
        (sound "bd" # delay "e")
        (sound "bd" # delay (1/8))

    it "bababab" $ do
      compareP (Arc 0 1)
        (sound "bd" # delay "0.5")
        (sound "bd" # delay (1/2))


