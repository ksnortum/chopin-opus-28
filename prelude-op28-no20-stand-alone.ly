\version "2.24.0"

\include "includes/header-paper.ily"
\include "includes/prelude-op28-no20-parts.ily"

\paper {
  ragged-last-bottom = ##t
  min-systems-per-page = 0
  system-system-spacing =
    #'((basic-distance . 12) 
       (minimum-distance . 8)
       (padding . 1)
       (stretchability . 60))
}

\preludeTwentyMusic
\preludeTwentyMidi
