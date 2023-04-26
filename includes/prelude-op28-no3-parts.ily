%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

adjustArpeggioA = \tweak Arpeggio.positions #'(-2 . 4) \etc
adjustArpeggioB = \tweak Arpeggio.positions #'(-2 . 4) \etc
adjustArpeggioC = \tweak Arpeggio.positions #'(-4 . 0) \etc
adjustArpeggioD = \tweak Arpeggio.positions #'(-4 . 0) \etc

%%% Music %%%

global = {
  \time 4/4
  \key g \major
  \accidentalStyle piano
}

rightHandUpper = \relative {
  \oneVoice
  R1 * 2 |
  d'4. r8 <g b>4. r16 <c e>16( |
  <b d>2.) r8 r16 <e c'>16( |
  <d b'>1 |
  <b g'>2) r |
  \voiceOne
  fs'2...( e16 |
  a2) s2 |
  
  \barNumberCheck 9
  fs2...( e16 |
  a2) s2 |
  \oneVoice
  r4 r8 r16 <a c>( <c, e>4.) r16 <c d>( |
  d,4.) r8 <g b>4. r16 <c e>16( |
  <b d>2.) r8 r16 <e c'>16( |
  <d b'>1 |
  <b g'>2) r |
  \voiceOne
  f'2( f4.. f16 |
  
  \barNumberCheck 17
  f4.. \grace { f32[ g] } f16 e4.. ds16 |
  <e,_~ g_~ c^~ e^~>1\arpeggio |
  q1) |
  \voiceOne
  c'2( c4.. c16 |
  c2... b16 |
  b1 |
  a2... b16 |
  <d, g>1-\adjustArpeggioC \arpeggio |
  
  \barNumberCheck 25
  fs2... g16 |
  <d g>1)-\adjustArpeggioD \arpeggio |
  \oneVoice
  R1 |
  b16(^\leggiero d g a  b a g e'  d c b a  g a b d,) |
  b16( d g a  b a g e'  d c b a  g a b d,) |
  \slurUp
  b16( d g a  g a b d,)  b( d g a  g a b d,) |
  b16( d g a  g a b d  g a b d \ottava 1 g a b d |
  b4) \ottava 0 r <b,,, d g b>2\arpeggio |
  
  \barNumberCheck 33
  q1\arpeggio \fermata |
}

rightHandLower = \relative {
  \voiceTwo
  s1 * 6 |
  <g' a cs>1 |
  <fs d'>4-\adjustArpeggioA \arpeggio \oneVoice r4 r2 |
  
  \barNumberCheck 9
  \voiceTwo
  <g a cs>1 |
  <fs c'>4-\adjustArpeggioB \arpeggio \oneVoice r4 r2 |
  \voiceTwo
  s1 * 5 |
  b1 |
  
  \barNumberCheck 17
  b1 |
  s1 * 2 |
  <e, g>1 |
  q1 |
  q1~ |
  q1 |
  a,4 b\rest a2\rest |
  
  \barNumberCheck 25
  <c d>1 |
  b4 b\rest b2\rest |
  
}

rightHand = <<
  \clef treble
  \global
  \mergeDifferentlyDottedOn
  \set Score.tempoHideNote = ##t 
  \tempo "Vivace" 4 = 156
  \override Score.SpacingSpanner.strict-grace-spacing = ##t
  \new Voice \rightHandUpper
  \new Voice \rightHandLower
>>

leftHand = \relative {
  \clef bass
  \global
  \voiceFour
  \slurUp

  g,16(_\p d' g a  b a g e'  d c b a  g a b d,) |
  \repeat unfold 5 { g,16( d' g a  b a g e'  d c b a  g a b d,) | }
  a16( e' a b  cs b a fs'  e d cs b  a b cs e,) |
  d,16( a' d e  fs e d b'  a g fs e  d e fs b,) |
  
  \barNumberCheck 9
  a16( e' a b  cs b a fs'  e d cs b  a b cs e,) |
  d,16( a' d e  fs e d b'  a g fs e  d e fs a,) |
  d,16( a' d e  fs e d b'  a g fs e  d e fs a,) |
  \repeat unfold 5 { g16( d' g a  b a g e'  d c b a  g a b d,) | }
  
  \barNumberCheck 17
  g,16( d' g a  b a g e'  d c b a  g a b g,) |
  \repeat unfold 4 { c,16( g' c d  e d c a'  g f e d  c d e g,) | }
  c,16( g' c d  e d c a'  g fs e d  c d e g,) |
  c,16( g' c d  e d c a'  g fs e d  c d e g,) |
  d16( a' c d  e d c b'  a g e d  c d e a,) |
  
  \barNumberCheck 25
  d,16( a' d e  fs e d b'  a g fs e  d e fs a,) |
  \repeat unfold 4 { g16( d' g a  b a g e'  d c b a  g a b d,) | }
  g,16( d' g a  g a b d,)  g,( d' g a  g a b d,) |
  g,16( d' g a  g a b d \clef treble g a b d  g a b d |
  b4) \oneVoice r \clef bass <g,,, d' g>2\arpeggio |
  
  \barNumberCheck 33
  q1\arpeggio _\fermata |
  \bar "|."
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \tag layout { s1-\tweak TextScript.X-offset -3 ^\leggiermente | s1 }
  \tag midi   { s1 | s1\p }
  s1 * 2 |
  s2...\> s16\! |
  s1 |
  \tag layout { s1 | }
  \tag midi   { s1\p }
  s1 |
  
  \barNumberCheck 9
  s1 * 5 |
  s2...\> s16\! |
  s1 |
  \tag layout { s1\< | }
  \tag midi   { s1\p\< | }
  
  \barNumberCheck 17
  s2... s16\! |
  s2...\> s16\! |
  s1 * 6 |
  
  \barNumberCheck 25
  s1 * 3 |
  s1 \p |
  s1 * 2
  s1^\dimm
}

preludeThreeMusic = \score { 
  \keepWithTag #'layout
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 3"
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
  >>
  \layout {}
}

preludeThreeMidi = \book {
  \bookOutputName "prelude-op28-no3"
  \score { 
    \keepWithTag #'midi
    <<
      \new Staff = "upper" << \rightHand \dynamics >>
      \new Staff = "lower" << \leftHand \dynamics >>
    >>
    \midi {}
  }
}
