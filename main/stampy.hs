{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}


import           Network.Wai.Handler.Warp (defaultSettings, runSettings,
                                           setHost, setPort)

import           P

import           Stampy

import           System.IO

import           X.Control.Monad.Trans.Either.Exit (orDie)


main :: IO ()
main = do
  hSetBuffering stdout LineBuffering
  hSetBuffering stderr LineBuffering

  orDie renderStampyError $ do
    let port = 3000
        host = "0.0.0.0"
        settings = setPort port (setHost host defaultSettings)
   
    liftIO $ putStrLn "Listening on port 3000"
    stampy >>= liftIO . runSettings settings
