\version "2.24.0"

\include "includes/header-paper.ily"
\include "includes/prelude-op28-no8-parts-stand-alone.ily"

\header {
  title = "Prelude"
  opus = "Opus 28"
  composer = "Frédéric Chopin"
}

\paper {
  min-systems-per-page = ##f
}

% Do not force breaks
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
