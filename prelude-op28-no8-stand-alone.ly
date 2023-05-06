\version "2.24.0"

\include "includes/header-paper.ily"
\include "includes/prelude-op28-no8-parts.ily"

\header {
  title = "Prelude"
  opus = "Opus 28"
  composer = "Frédéric Chopin"
}

\paper {
  min-systems-per-page = ##f
  two-sided = ##f
}

% Full score here instead of variable because we don't want forced breaks
\score { 
  \keepWithTag #'layout
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 8"
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
  >>
  \layout {}
}
\preludeEightMidi
