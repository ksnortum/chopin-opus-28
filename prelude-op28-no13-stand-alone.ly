\version "2.24.0"

\include "includes/header-paper.ily"
\include "includes/prelude-op28-no13-parts.ily"

\paper {
  page-count = 2
  % ragged-last-bottom = ##t
  % page-breaking = #ly:minimal-breaking
  system-system-spacing =
    #'((basic-distance . 12) 
       (minimum-distance . 8)
       (padding . 1)
       (stretchability . 60))
}

\preludeThirteenMusic
\preludeThirteenMidi
