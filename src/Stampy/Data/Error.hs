{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module Stampy.Data.Error (
    StampyError (..)
  , renderStampyError
  ) where


import qualified Data.Text as T

import           P


data StampyError = StampyError

renderStampyError :: StampyError -> Text
renderStampyError = const T.empty
