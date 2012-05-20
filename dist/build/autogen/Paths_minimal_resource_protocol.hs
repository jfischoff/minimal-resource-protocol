module Paths_minimal_resource_protocol (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName
  ) where

import Data.Version (Version(..))
import System.Environment (getEnv)

version :: Version
version = Version {versionBranch = [0,0,0,1], versionTags = []}

bindir, libdir, datadir, libexecdir :: FilePath

bindir     = "/Users/hi5networks/.cabal/bin"
libdir     = "/Users/hi5networks/.cabal/lib/minimal-resource-protocol-0.0.0.1/ghc-7.2.2"
datadir    = "/Users/hi5networks/.cabal/share/minimal-resource-protocol-0.0.0.1"
libexecdir = "/Users/hi5networks/.cabal/libexec"

getBinDir, getLibDir, getDataDir, getLibexecDir :: IO FilePath
getBinDir = catch (getEnv "minimal_resource_protocol_bindir") (\_ -> return bindir)
getLibDir = catch (getEnv "minimal_resource_protocol_libdir") (\_ -> return libdir)
getDataDir = catch (getEnv "minimal_resource_protocol_datadir") (\_ -> return datadir)
getLibexecDir = catch (getEnv "minimal_resource_protocol_libexecdir") (\_ -> return libexecdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
