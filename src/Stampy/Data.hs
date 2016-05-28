{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module Stampy.Data (
    module X
  ) where


import           Control.Monad.IO.Class       as X (MonadIO (..))
import           Control.Monad.Trans.Class    as X (MonadTrans (..))

import           Stampy.Data.Error            as X

import           System.IO as X (IO)

import           X.Control.Monad.Trans.Either as X
