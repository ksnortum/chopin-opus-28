%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'((0 . 2) (0 . 0) (0 . 0) (0 . 2)) \etc
slurShapeB = \shape #'(
                        ((0 . 2) (0 . 2) (0 . 2) (0 . 2))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0)) 
                      ) \etc
slurShapeC = \shape #'((0 . 2) (0 . 0) (0 . 0) (0 . 0)) \etc

%%% Music %%%

global = {
  \time 3/4
  \key a \major
  \accidentalStyle piano
}

rightHandUpper = \relative {
  \partial 4 e'4(
  cs'8. d16 <d, gs b>4 q |
  q2) <d' fs>4( |
  <bs ds>8. <cs~ e>16 <cs a'>4 q |
  q2) \voiceOne <e, cs'>4( |
  <cs as'>8. <d b'>16 <fs d'>4 q |
  q2) \oneVoice <d gs>4-\slurShapeA ^( |
  q8. <cs~ a'>16 <cs cs'>4 q |
  q2) \voiceOne e4-\slurShapeB ( |
  
  \barNumberCheck 9
  cs'8. d16 <d, gs b>4 q |
  q2) \oneVoice <d' fs>4(
  <bs ds>8. <cs e>16~ <cs e a cs>4 q |
  <as cs e as cs>2) <as cs>4( |
  <as cs>8. <b_~ d>16 <b fs'>4 <a fs'> |
  <gs fs'>2) <d gs>4-\slurShapeC ^( |
  <d b'>8. <cs a'>16 \voiceOne <cs' a'>4 q |
  q2) b4\rest |
  \bar "|."
}

rightHandLower = \relative {
  \partial 4 s4
  s2. * 4 |
  s8. \voiceOne \hideNotes d'16_~ \unHideNotes \voiceTwo d2~ |
  d2 s4 |
  s2. |
  s2 \voiceOne e4_~ |
  
  \barNumberCheck 9
  \voiceTwo <e gs>4 s2 |
  s2. * 5 |
  s4 \voiceOne \slurDown \acciaccatura { a8 } \voiceTwo a2~ |
  a2 s4 |
}

rightHand = <<
  \clef treble
  \global
  \set Score.tempoHideNote = ##t 
  \tempo "Andantino" 4 = 100
  \new Voice \rightHandUpper
  \new Voice \rightHandLower
>>

leftHand = \relative {
  \clef bass
  \global
  \partial 4 r4
  e,4 <e' e'> q |
  q2 r4 |
  a,4 <a' e'>4 q |
  q2 r4 |
  e,4 <e' b'> q |
  q2 r4 |
  a,, <e'' a e'>4 q |
  q2 r4
  
  \barNumberCheck 9
  e,4 <e' e'>4 q |
  q2 r4 |
  a,4 <a' e' a> q |
  <fs cs' e fs>2 r4 |
  b,,4 <fs'' d'> <fs b d> |
  <e b' d>2 r4 |
  a,,4 <e'' a e'> q |
  <a e'>2 r4 |
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \partial 4 \tag layout { s4^\pDolce }
             \tag midi   { s4\p }
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 2 |
  s2\< s8 s\! |
}

pedal = {
  \partial 4 s4
  s2.\sustainOn |
  s4 s\sustainOff s |
  s2.\sustainOn |
  s4 s\sustainOff s |
  s2.\sustainOn |
  s4 s\sustainOff s |
  s2.\sustainOn |
  s4 s\sustainOff s |
  
  \barNumberCheck 9
  s2.\sustainOn |
  s4 s\sustainOff s |
  s2\sustainOn s4\sustainOff |
  s2\sustainOn s4\sustainOff |
  s2\sustainOn s4\sustainOff |
  s2\sustainOn s4\sustainOff |
  s2.\sustainOn |
  s2 s4\sustainOff |
}

preludeSevenMusic = \score { 
  \keepWithTag #'layout
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 7"
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics = "pedal" \pedal
  >>
  \layout {}
}

preludeSevenMidi = \book {
  \bookOutputName "prelude-op28-no7"
  \score { 
    \keepWithTag #'midi
    <<
      \new Staff = "upper" << \rightHand \dynamics \pedal >>
      \new Staff = "lower" << \leftHand \dynamics \pedal >>
    >>
    \midi {}
  }
}
