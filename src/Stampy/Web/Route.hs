{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module Stampy.Web.Route (
    stampyRoutes
  ) where


import           Airship
import           Airship.Resource.Static (StaticOptions (..), staticResource)

import           P

import           Stampy.Data


stampyRoutes :: MonadIO m => IO (RoutingSpec m ())
stampyRoutes = do
  staticCache <- liftIO $ staticResource Cache "static"
  pure $ do
    root #> defaultResource
    "static" </> star #> staticCache
