\version "2.22.2"

\include "includes/header-paper.ily"
\include "includes/prelude-op28-no2-parts.ily"

\paper {
  ragged-last-bottom = ##t
  system-system-spacing =
    #'((basic-distance . 12) 
       (minimum-distance . 8)
       (padding . 4)
       (stretchability . 60))
}

\preludeTwoMusic
\preludeTwoMidi
