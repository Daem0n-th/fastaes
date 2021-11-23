module Crypto.Aes
  ( encryptFile,
    decryptFile,
  )
where

import Crypto.Cipher.AES (AES256)
import Crypto.Cipher.Types (BlockCipher (ecbDecrypt, ecbEncrypt), Cipher (cipherInit))
import Crypto.Data.Padding (Format (PKCS7), pad, unpad)
import Crypto.Error (CryptoError, eitherCryptoError)
import Data.ByteString (ByteString)
import qualified Data.ByteString as BS
import Data.Maybe (fromJust)

aesInit :: Cipher a => ByteString -> Either CryptoError a
aesInit k = eitherCryptoError (cipherInit k)

aesEncrypt :: ByteString -> ByteString -> Either CryptoError ByteString
aesEncrypt k pt = encrypt <$> aesInit k
  where
    encrypt c = ecbEncrypt (c :: AES256) $ pad (PKCS7 16) pt

aesDecrypt :: ByteString -> ByteString -> Either CryptoError ByteString
aesDecrypt k ct = decrypt <$> aesInit k
  where
    decrypt c = fromJust $ unpad (PKCS7 16) $ ecbDecrypt (c :: AES256) ct

encryptFile :: FilePath -> FilePath -> FilePath -> IO ()
encryptFile = cipherAction aesEncrypt

decryptFile :: FilePath -> FilePath -> FilePath -> IO ()
decryptFile = cipherAction aesDecrypt

cipherAction ::
  (ByteString -> ByteString -> Either CryptoError ByteString) ->
  FilePath ->
  FilePath ->
  FilePath ->
  IO ()
cipherAction action keyFile inFile outFile = do
  it <- BS.readFile inFile
  key <- BS.readFile keyFile
  case action key it of
    Left e -> print e
    Right ot -> BS.writeFile outFile ot