{-# LANGUAGE TemplateHaskell #-}

module Main where

import Hedgehog
import Hedgehog.Main
import Hymaxion

prop_test :: Property
prop_test = property $ do
  doHymaxion === "Hymaxion"

main :: IO ()
main = defaultMain [checkParallel $$(discover)]
