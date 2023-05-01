\version "2.24.0"

\include "includes/header-paper.ily"
\include "includes/prelude-op28-no19-parts.ily"

\header {
  title = "Prelude"
  opus = "Opus 28"
  composer = "Frédéric Chopin"
}

% No force breaks
\score { 
  \keepWithTag #'layout
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 19"
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
  >>
  \layout {}
}

\preludeNinteenMidi
