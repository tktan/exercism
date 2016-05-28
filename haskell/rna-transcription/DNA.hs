module DNA where

toRNA = map toRNA'
  where toRNA' 'G' = 'C'
        toRNA' 'C' = 'G'
        toRNA' 'T' = 'A'
        toRNA' 'A' = 'U'
