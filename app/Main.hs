{-# LANGUAGE DeriveDataTypeable #-}

module Main where

import Crypto.Aes (decryptFile, encryptFile)
import Data.ByteString (ByteString)
import System.Console.CmdArgs

data AesArgs
  = Gen {output :: FilePath}
  | Enc
      { output :: FilePath,
        key :: FilePath,
        input :: FilePath
      }
  | Dec
      { output :: FilePath,
        key :: FilePath,
        input :: FilePath
      }
  deriving (Data, Typeable, Show, Eq)

gen :: AesArgs
gen =
  Gen
    { output = def &= argPos 0 &= typFile
    }

enc :: AesArgs
enc =
  Enc
    { output = def &= name "o" &= help "File name for the encrypted data.",
      key = def &= name "k" &= help "AES key file to encrypt the file with.",
      input = def &= argPos 1 &= typFile
    }

dec :: AesArgs
dec =
  Dec
    { output = def &= name "o" &= help "File name for the decrypted data.",
      key = def &= name "k" &= help "AES key file to decrypt the file with.",
      input = def &= argPos 2 &= typFile
    }

mode :: Mode (CmdArgs AesArgs)
mode =
  cmdArgsMode $
    modes [gen, enc, dec]
      &= help "Generate AES keys or Encrypt/Decrypt files in AES256"
      &= program "fastaes"
      &= summary "fastaes v0.1.0.0, (C) Dheemanth Manur"

main :: IO ()
main = handleArgs =<< cmdArgsRun mode
  where
    handleArgs (Gen outF) = undefined
    handleArgs (Enc outF keyF inF) = encryptFile keyF inF outF
    handleArgs (Dec outF keyF inF) = decryptFile keyF inF outF