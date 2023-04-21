%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

adjustArpeggioA = \tweak Arpeggio.positions #'(-0.5 . 2.5) \etc
slurShapeA = \shape #'((0 . 1) (0 . 2) (0 . 3) (0 . 3)) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 1) (0 . 2) (0 . 3))
                      ) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 1) (0 . 2) (0 . 3))
                      ) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 3) (0 . -3) (0 . -4) (0 . 0))
                      ) \etc

%%% Music %%%

global = {
  \time 2/2
  \key a \minor
  \accidentalStyle piano
}

rightHand = \relative {
  \clef treble
  \global
  \set Score.tempoHideNote = ##t 
  \tempo "Lento" 4 = 40

  R1 * 2 |
  \slurUp
  e'2..( b8 |
  d1) |
  d4.-\slurShapeB ( \acciaccatura { fs8 } e8 d4. a8 |
  b4 b8. b16 b2~ |
  b2) r |
  r2 b'4.( fs8 |
  
  \barNumberCheck 9
  a1) |
  a4.-\slurShapeC ( \acciaccatura { cs8 } b8 a4. e8 |
  fs4 \dynamicInsideSlur fs8.^\< fs16 fs2~\! |
  fs2) r |
  R1 |
  r4 a2.~( |
  a2.. e8 |
  f1) |
  
  \barNumberCheck 17
  f4.( \acciaccatura { a8 } g8 f4. c8 |
  d4 d8. d16 d2~ |
  d2) r |
  d4.-\slurShapeA ( \acciaccatura { f8 } e8 d4.
  << { a8_~ | \voiceTwo a2 } \\ { s8 | \voiceOne b4 b8. b16 } >>
    \clef bass \voiceTwo <e, gs b>4 <ds fs b> |
  <e gs b>2 << { b'4. c8 } \\ { <d, e gs>2-\adjustArpeggioA \arpeggio } >> |
  <c e a>1)\arpeggio |
  \bar "|."
}

leftHand = \relative {
  \clef bass
  \global
  
  <<
    {  
      b,8( as b g  b as b g |
      b8 as b g  b as b g) |
    }
    \\
    {  
      e8 g' e, g'  e, g' e, g' |
      e,8 g' e, g'  e, g' e, g' |
    }
  >>
  \voiceFour \slurUp
  <e, b'>8( <as g'> <e b'> <g g'>  <e b'> <as g'> <e b'> <g g'> |
  <d b'>8 <as' g'> <d, b'> <g g'>  <d b'> <as' g'> <d, b'> <g g'>) |
  <d a'>8( <gs g'!> <d a'> <g \single \omit Accidental g'>  <d a'> <gs fs'> 
    <d a'> <fs fs'> |
  <g, g'>8 <e'' g> <g, d'> <ef' g>  <g, d'> <e' g> <g, d'> <ef' g> |
  <g, d'>8 <e' g> <g, d'> <ef' g>  <g, d'> <e' g> <g, d'> <e' g>) |
  <b fs'>8( <es d'> <b fs'> <d d'>  <b fs'> <es d'> <b fs'> <d d'> |
  
  \barNumberCheck 9
  <a fs'>8 <es' d'> <a, fs'> <d d'>  <a fs'> <es' d'> <a, fs'> <d d'>) |
  <a e'>8-\slurShapeD ( <ds d'!> <a e'> <d \single \omit Accidental d'>  <a e'>
    <ds cs'> <a e'> <cs cs'> |
  <a ds>8 <css cs'> <a ds> <cs \single \omit Accidental cs'>  <a ds> <css cs'!>
    <a ds> <cs \single \omit Accidental cs'> |
  <a ds>8 <css cs'> <a ds> <cs \single \omit Accidental cs'>  <a ds>8 <css c'>
    <a ds> <c! \single \omit Accidental c'>) |
  <fs, ds'>8( <css' a'> <fs, ds'> <c' a'>  <fs, ds'> <css' a'> <fs, ds'> 
    <c' a'> |
  <fs, ds'>8 <css' a'> <fs, ds'> <c' a'>  <f, ds'> <css' a'> <f, ds'> 
    <b a'>) |
  <e, c'>8( <b' a'> <e, c'> <a a'>  <e c'> <b' a'> <e, c'> <a a'> |
  <e c'>8 <b' a'> <e, c'> <a a'>  <e c'> <b' a'> <e, c'> <a a'>) |
  
  \barNumberCheck 17
  \oneVoice
  R1 |
  r2 \voiceFour <e c'>8^(\sustainOn <b' f'> <e, c'> <a f'> |
  <e c'> <b' f'> <e, c'> <a f'>)\sustainOff \oneVoice r2 |
  R1 |
  r2 e4 <b b'> |
  <e b'>2 <e, e'> |
  <a e'>1\arpeggio |
}


dynamics = {
  \override TextScript.Y-offset = -0.5
  s1\p |
  s1 * 7 |
  
  \barNumberCheck 9
  s1 * 4 |
  s2 s\dim |
  s1 * 2 |
  s2.. s16 s\! |
  
  \barNumberCheck 17
  \tag layout { s1^\slentando | }
  \tag midi   { s1\p | }
  s1 * 3 |
  s2 s^\sostenutom |
  s1 * 2 |
}

forceBreaks = {
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak % 4
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak % 9
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak % 13
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak % 18
}

preludeTwoMusic = \score { 
  \keepWithTag #'layout
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 2"
    connectArpeggios = ##t
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Devnull \forceBreaks
  >>
  \layout {}
}

preludeTwoMidi = \book {
  \bookOutputName "prelude-op28-no2"
  \score { 
    \keepWithTag #'midi
    <<
      \new Staff = "upper" << \rightHand \dynamics >>
      \new Staff = "lower" << \leftHand \dynamics >>
    >>
    \midi {}
  }
}
