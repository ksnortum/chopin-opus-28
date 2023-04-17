%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.22.2"

\include "prelude-op28-no12-parts.ily"

% Doesn't have forceBreaks
preludeTwelveMusic = \score { 
  \keepWithTag #'layout
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 12"
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
  >>
  \layout {}
}
