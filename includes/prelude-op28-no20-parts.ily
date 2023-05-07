%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurPositionsA = \tweak Slur.positions #'(7 . 8) \etc
slurPositionsB = \tweak Slur.positions #'(6 . 7) \etc

slurShapeA = \shape #'((0 . 2) (3 . 2) (0 . 0) (0 . 0)) \etc
slurShapeB = \shape #'((0 . 0) (0 . 0) (-1 . 5) (0.5 . 1)) \etc

%%% Music %%%

global = {
  \time 4/4
  \key c \minor
  \accidentalStyle piano
}

rightHand = \relative {
  \clef bass
  \global
  \set Score.tempoHideNote = ##t 
  \tempo "Largo" 4 = 50
  
  <g c ef g>4-\slurPositionsA ( <af c ef af> 
    << { <ef' g>8. <d f>16 } \\ { <g, b>4 } >> <ef g c ef>4) |
  <ef af c ef>4-\slurPositionsB ( <f af df f>
    << { <c' ef>8. <bf df>16 } \\ { <df, ef g>4 } >> <c ef af c>4) |
  <d f b d>4-\slurShapeA ( <e g bf c e>
    << { g'8. f16 } \\ { <af, c>4 } >> <g c e>4
  <fs c' d>4 <g b d g> \clef treble
    << { b'8. a16 } \\ { <c, d fs>4 } >> <b d g>4)
  <ef g ef'>4-\slurShapeB ( <ef af ef'>
    << { <d d'> } \\ { af'8. fs16 } >> <d g d'>4
  <c g' c>4 <c d fs d'> <d g b>8. <c a'>16 <b d g>4 |
  <c g' c>4 <af c af'>
    << { g'8. f16 } \\ { <g, d'>4 } >> <g c ef>4
  \clef bass <ef af c ef>4 <f af df f>
    << { ef'8. d16 } \\ { <f, g b>4 } >> <ef g c>4) |
    
  \barNumberCheck 9
  \clef treble <ef' g ef'>4-\slurShapeB ( <ef af ef'>
    << { <d d'> } \\ { af'8. fs16 } >> <d g d'>4
  <c g' c>4 <c d fs d'> <d g b>8. <c a'>16 <b d g>4 |
  <c g' c>4 <af c af'>
    << { g'8. f16 } \\ { <g, d'>4 } >> <g c ef>4
  \clef bass <ef af c ef>4 <f af df f>
    << { ef'8. d16 } \\ { <f, g b>4 } >> <ef g c>4) |
  \clef treble <c' ef g c>1\fermata |
}

leftHand = \relative {
  \clef bass
  \global

  <c, c'>4 <f, f'> <g g'>4 <c g' c> |
  <af af'>4 <df, df'> <ef ef'> <af af'> |
  <g g'>4 <c, c'> <f f'> <c' c'> |
  <d a' d>4 <g, g'> <d d'> <g g'> |
  <c c'>4( <c' c'> <b b'> <bf bf'> |
  <a a'>4 <af af'> <g g'> <f f'> |
  <ef ef'> <f f'> <b, b'> <c c'> |
  <af af'> <df, df'> <g g'> <c, c'>) |
  
  \barNumberCheck 9
  <c' c'>4( <c' c'> <b b'> <bf bf'> |
  <a a'>4 <af af'> <g g'> <f f'> |
  <ef ef'> <f f'> <b, b'> <c c'> |
  <af af'> <df, df'> <g g'> <c, c'>) |
  <c'' g'>1\fermata |
  \bar "|."
}

dynamics = {
  \override TextScript.Y-offset = -0.5

  s1\ff |
  s1 |
  s1\< |
  s2.. s8\! |
  s1\p |
  s1 * 3 |
  
  \barNumberCheck 9
  s1\pp |
  s1 |
  s2. s4^\rit |
  s1 * 2 |
}

pedal = {
  s1 * 11 |
  s2. s4\sustainOn |
  s2. s4\sustainOff |
}

preludeTwentyMusic = \score { 
  \keepWithTag #'layout
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 20"
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
  >>
  \layout {}
}

preludeTwentyMidi = \book {
  \bookOutputName "prelude-op28-no20"
  \score { 
    \keepWithTag #'midi
    <<
      \new Staff = "upper" << \rightHand \dynamics \pedal >> 
      \new Staff = "lower" << \leftHand \dynamics \pedal >> 
    >>
    \midi {}
  }
}
