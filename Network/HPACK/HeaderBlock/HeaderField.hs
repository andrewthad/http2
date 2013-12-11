module Network.HPACK.HeaderBlock.HeaderField (
  -- * Type
    HeaderBlock
  , HeaderField(..)
  , HeaderName  -- re-exporting
  , HeaderValue -- re-exporting
  , Index       -- re-exporting
  , Indexing(..)
  , Naming(..)
  ) where

import Network.HPACK.Types

----------------------------------------------------------------

-- | Type for header block.
type HeaderBlock = [HeaderField]

-- | Type for representation.
data HeaderField = Indexed Index
                 | Literal Indexing Naming HeaderValue
                 deriving Show

-- | Whether or not adding to a table.
data Indexing = Add | NotAdd deriving Show

-- | Index or literal.
data Naming = Idx Index | Lit HeaderName deriving Show