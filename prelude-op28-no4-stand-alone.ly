\version "2.24.0"

\include "includes/header-paper.ily"
\include "includes/prelude-op28-no4-parts.ily"

\paper {
  ragged-last-bottom = ##t
  system-system-spacing =
    #'((basic-distance . 12) 
       (minimum-distance . 8)
       (padding . 4)
       (stretchability . 60))
}

\preludeFourMusic
\preludeFourMidi
