{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module Stampy (
    stampy
  ) where


import           Airship

import           Network.Wai      (Application)

import           P

import           Stampy.Data
import           Stampy.Web.Route


stampy :: MonadIO m => EitherT StampyError m Application
stampy = undefined
