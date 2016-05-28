{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module Stampy (
    stampy
  , module X
  ) where


import qualified Airship as A

import           Network.Wai      (Application)

import           P

import           Stampy.Data as X
import           Stampy.Web.Route


stampy :: MonadIO m => EitherT StampyError m Application
stampy = do
  routes <- liftIO stampyRoutes
  pure $ A.resourceToWai A.defaultAirshipConfig routes mempty
