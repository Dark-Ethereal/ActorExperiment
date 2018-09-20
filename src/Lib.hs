{-# LANGUAGE OverloadedStrings #-}

module Lib
    ( someFunc
    ) where

import           Control.Lens
import           Control.Monad.State.Lazy
import           Control.Monad.Writer.Lazy
import           Data.IntMap.Strict

import           Classes
import           Types

someFunc :: IO ()
someFunc = putStrLn "someFunc"
