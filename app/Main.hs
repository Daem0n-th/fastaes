{-# LANGUAGE DeriveDataTypeable #-}

module Main where

import Crypto.Aes (decryptFile, encryptFile)
import Data.ByteString (ByteString)
import System.Console.CmdArgs

data AesArgs = AesArgs
  { output :: FilePath,
    decrypt :: Bool,
    key :: FilePath,
    input :: FilePath
  }
  deriving (Data, Typeable, Show, Eq)

aesArgs :: AesArgs
aesArgs =
  AesArgs
    { output = def &= name "o" &= help "Filename for the output data.",
      decrypt = def &= name "d" &= help "Decrypt the file.",
      key = def &= name "k" &= help "File containing the AES key to encrypt/decrypt the file.",
      input = def &= args &= typ "INPUT FILE"
    }
    &= verbosity
    &= help "Encrypt/Decrypt files in AES256"
    &= summary "fastaes v0.1.0.0, (C) Dheemanth Manur"
    &= details
      [ "Hlint gives hints on how to improve Haskell code",
        "",
        "To check all Haskell files in 'src' and generate a report type:",
        "  hlint src --report"
      ]

main :: IO ()
main = handleArgs =<< cmdArgs aesArgs
  where
    handleArgs (AesArgs outF decrypt k inF) = if decrypt then decryptFile k inF outF else encryptFile k inF outF