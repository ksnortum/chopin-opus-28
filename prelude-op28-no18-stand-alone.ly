\version "2.22.2"

\include "includes/header-paper.ily"
\include "includes/prelude-op28-no18-parts.ily"

\paper {
  ragged-last-bottom = ##t
  min-systems-per-page = 0
  system-system-spacing =
    #'((basic-distance . 12) 
       (minimum-distance . 8)
       (padding . 1)
       (stretchability . 60))
}

\preludeEighteenMusic
\preludeEighteenMidi
