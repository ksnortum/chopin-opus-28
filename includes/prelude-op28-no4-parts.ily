%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

moveTupletA = \tweak TupletNumber.Y-offset -1 \etc
strettoSpan = \override TextSpanner.bound-details.left.text 
  = \markup \large \italic "stretto"
moveDynamicA = \tweak X-offset -0.5 \etc
moveNoteColumnA = \tweak NoteColumn.X-offset 1.25 \etc
moveDoubleSharp = 
  \tweak X-offset -0.4
  \tweak Y-offset 1.45
  \etc

%%% Music %%%

global = {
  \time 2/2
  \key e \minor
  \accidentalStyle piano
}

rightHand = \relative {
  \clef treble
  \global
  \set Score.tempoHideNote = ##t 
  \tempo "Largo" 4 = 50
  
  \partial 4 { b8.( b'16_\espressivom }
  b2. c4 |
  b2. c4 |
  b2. c4 |
  b2. bf4 |
  a2. b4 |
  a2. b4 |
  a2. b8. a16 |
  a2. gs4->~ |
  
  \barNumberCheck 9
  gs4 a8\< b  d\> c e, a\! |
  fs2.) a4( |
  fs2.) \acciaccatura { b8 } a4^\( |
  \omit TupletBracket \tupletDown
  g8 fs c-> b  ds fs \moveTupletA \tuplet 3/2 { d'8( c b)\) } |
  b2.( c4 |
  b2. c4 |
  b2. c4 |
  b8. as16 \strettoSpan 
    << 
      { as4\startTextSpan } 
      { s8. \textInsideStaff s16\turn-\moveDoubleSharp^\doubleSharp } 
    >> 
    g'4 fs8. e16 |
  
  \barNumberCheck 17
  e8 ds c' ds,  ds e g b, |
  \tupletUp
  d8 c \tuplet 3/2 { e8 e, a } fs4. a8\stopTextSpan |
  fs2.) \acciaccatura { b8 } a4^( |
  fs2.~ fs8. e16 |
  e2. fs4 |
  e2. fs4 |
  e2) r\fermata |
  \voiceOne
  \moveNoteColumnA e2( ds |
  
  \barNumberCheck 25
  e1)\fermata |
  \bar "|."
}

leftHand = \relative {
  \clef bass
  \global
  
  \slurUp
  \oneVoice
  \partial 4 { r4 }
  \voiceFour
  <g b e>8^( q q q  q q q q |
  <fs a e'>8 q q q  <fs a ef'> q q q |
  <f a ef'>8 q q q  <f a d> q <f gs d'> q |
  <e gs d'>8 q q q  <e g d'> q <e g cs> q |
  <e g c>8 q q q  <e fs c'> q q q |
  q8 q q q  <ds fs c'> q q q |
  <d fs c'>8 q q q  q q q q |
  <d f c'>8 q q q  <d f b> q q q |
  
  \barNumberCheck 9
  <c e b'>8 q <c e a> q  q q q q |
  <b e a>8 q <b ds a'> q  <c e a> q q q |
  <b ds a'>8 q q q  <c e a> q q q |
  <b ds a'>4) \oneVoice r r2 |
  \voiceFour
  <g' b e>8^( q q q  q q q q |
  <fs a e'>8 q q q  <f a ef'> q q q |
  <f af ef'>8 q <f af d> q  <e gs d'> q q q |
  <e g d'>8 q <e g cs> q  <cs e  as> q <c e a> q |
  
  \barNumberCheck 17
  <b, b'>8)\sustainOn <a'' c fs a>^( q q\sustainOff  <g b ds fs> <g b e> q q |
  <a c e>[ q] a,\sustainOn <e' fs c'>\sustainOff  <b e b'> q <c e a> q |
  <b e b'>8 q q q  <c e a> q q q |
  <b e b'>8 q q q  <b ds b'> q <b ds a'> q |
  <c g'>8 q q q  <c bf'> q <c e a> q |
  <b e a>8 q <b e gs> q <b e g> q q q |
  <bf c g'>2) \oneVoice r\fermata |
  <<
    { 
      \voiceOne \crossStaff { \moveNoteColumnA <e fs b>2 <ds fs b> } | 
      <e g b>1 | 
    }
    \\
    { 
      \voiceFour \moveNoteColumnA <b, b'>2( <b fs' b> | 
      <e, e'>1)\fermata | 
    }
  >> 
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  
  \partial 4 { s4\p }
  s1 * 8 |
  
  \barNumberCheck 9
  s1 * 3 |
  s4 s\< s s8.\> s16\! |
  \tag layout { s1 | }
  \tag midi   { s1\p | }
  s1 * 2 |
  s4.\< s8\! s4.\> s16 s\! |
  
  \barNumberCheck 17
  s4.\f\< s8\! s2\> |
  s4. s8\! s2^\dimm |
  s1\p |
  s2. s8.\< s16\! |
  s1^\smorz\> |
  s4 s2.\! |
  s1 |
  s1-\moveDynamicA \pp |
}

preludeFourMusic = \score { 
  \keepWithTag #'layout
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 4"
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
  >>
  \layout {}
}

preludeFourMidi = \book {
  \bookOutputName "prelude-op28-no4"
  \score { 
    \keepWithTag #'midi
    <<
      \new Staff = "upper" << \rightHand \dynamics >>
      \new Staff = "lower" << \leftHand \dynamics >>
    >>
    \midi {}
  }
}
