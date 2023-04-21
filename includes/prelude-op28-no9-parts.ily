%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

hShiftA = \override NoteColumn.force-hshift = 0

%%% Music %%%

global = {
  \time 4/4
  \key e \major
  \accidentalStyle piano
}

rightHandUpper = \relative {
  \voiceOne
  
  b4\( b8. b16 b4 cs |
  cs4 ds8. ds16 ds4 ds |
  e4 e8. e16 e4 ds8. ds16 |
  ds4 ds8. cs16 cs4 cs8. b16\) |
  b4\( b8. b16 b4 b8. b16 |
  c4 d e e8. e16 |
  e4 e8. e16 f4 g\) |
  \omit TupletNumber
  \tuplet 3/2 { af8*2( ef8 } ef8. df16 c8. cf16 b8. b16) |
  
  \barNumberCheck 9
  b4\( b8.. b32 b4 c |
  c4 c8.. c32 c4 d8. d16 |
  \tag layout {
    d4 d8.. d32 d4 ds8.. e32 |
    e4 e8.. e32 \voiceTwo e2\)^\fermata |
  }
  \tag midi {
    d4 d8.. d32 \tempo 4 = 32 d4 \tempo 4 = 30 ds8.. e32 |
    \tempo 4 = 28 e4 \tempo 4 = 26 e8.. e32 \voiceTwo e2) |
  }
  \bar "|."
}

rightHandLower = \relative {
  \voiceTwo
  \omit TupletBracket
  
  \tuplet 3/2 4 {
    <e gs>8 b <e gs> <ds fs> b <ds fs>  <e gs> b <e gs> <e a> cs <e a> |
    <fs a>8 cs <fs a> q cs <fs a>  <fs b> ds <fs b> <gs b> ds <gs b> |
    \omit TupletNumber
    <gs b>8 e <gs b> <fs cs'> e <fs cs'> <fs b> e <fs b> q ds <fs b> |
    <gs b>8 e <gs b> <fs as> e <fs as> <fs a> cs <fs a> q b, <fs' a> |
    <e gs>8 b <e gs> <ds fs> b <ds fs> <d g> b <d g> q b <d g> |
    g8 c, g' <g bf> d <g bf> q e <g bf> <g c> e <g c> |
    <a cs>8 e <a cs> <bf cs> e, <bf' cs> <bf df> f <bf df> q g <bf df> |
    <af c>8 ef <af c> <g c> ef <g bf> af ef af <ds, gs> b <ds a'> |
    
    \barNumberCheck 9
    <e gs>8 b <e gs> <ds fs> b <ds fs> <e gs> b <e gs> <e a> c <e a> |
    <f a>8 c <f a> <e g> c <e g> <f a> c <f a> <f bf> d <f bf> |
    <g bf>8 d <g bf> <fs a> d <fs a> <g b> d <g b> <fs b> ds <fs b> |
    <gs b>8 e <gs b> q e <gs b~> 
  }
  <e gs b>2 |
}

rightHand = <<
  \clef bass
  \global
  \set Score.tempoHideNote = ##t 
  \tempo "Largo" 4 = 34
  \new Voice \rightHandUpper
  \new Voice \rightHandLower
>>

leftHand = \relative {
  \clef bass
  \global

  e,4^\( b e a8.. gs32 |
  fs2 b,4\) b'8.. b32( |
  \tag layout {
    cs,4) a'8.. a32( b,4) \grace { as16[( b] \slashFlag cs8 }
      \afterGrace 7/8 b4\startTrillSpan { as16\stopTrillSpan b } |
    cs4) fs8.. fs32( ds4) \grace { css16[( ds] \slashFlag e8 } \afterGrace 7/8
      ds4\startTrillSpan { cs16-.\stopTrillSpan ds-. e-. fs-. } |
  }
  \tag midi {
    cs4) a'8.. a32( b,8..) as64 ds \repeat unfold 7 { cs64 ds } as64 ds |
    cs4 fs8.. fs32( ds8..) css64 ds \repeat unfold 6 { e64 ds } cs64-. ds-.
      e-. fs-. |
  }
  e4)^\( b g g'8.. f32 |
  e4 d c\) <c c'>8..^\( <bf bf'>32 |
  <a a'>4 <g g'>8.. q32 <f f'>4 <ff ff'>\) |
  <ef ef'>2^( af4) b^( |
  
  \barNumberCheck 9
  <e, e'>4 b' e) <a, a'>8..^\( <a a'>32 |
  <f f'>4 <c c'> <f f'>\) <bf bf'>8..( q32 |
  <g g'>4 <d d'> <g g'>) 
  <<
    { \voiceTwo s4 | \hideNotes <e e'>2\arpeggio }
    \\
    { \voiceThree <b' b'>8..( q32 | e2)~ e | }
    \\
    { \voiceFour s4 | \hShiftA e,2*1/2 b'4~ <e, b'>2\fermata | }
  >>
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  s1\f |
  s1 |
  s2. s8..\< s32\! |
  s4 s8 s\< s4 s8..\> s32\! |
  \tag layout {
    s2.\p s8.\whiteoutCresc s16\startTextSpan |
    s1 | 
    s2. s8.. s32\stopTextSpan |
    s4..\ff\> s16\! s2^\decrescm |
  }
  \tag midi {
    s1\p |
    s1\cresc  |
    s1 |
    s1\ff\> |
  }
  
  \barNumberCheck 9 
  s4\p s2\< s8 s\! |
  s4 s2\< s8 s\! |
  s2^\crescm s^\ritenuto |
  s1\ff |
}

pedal = {
  s4\sustainOn s\sustainOff\sustainOn s\sustainOff\sustainOn 
    s8..\sustainOff\sustainOn s32\sustainOff |
  s2\sustainOn s4\sustainOff\sustainOn s8..\sustainOff\sustainOn 
    s32\sustainOff |
  s4\sustainOn s\sustainOff\sustainOn s\sustainOff\sustainOn 
    s8.\sustainOff\sustainOn s16\sustainOff |
  s4\sustainOn s\sustainOff\sustainOn s\sustainOff\sustainOn
    s8.\sustainOff\sustainOn s16\sustainOff |
  s4\sustainOn s\sustainOff\sustainOn s\sustainOff\sustainOn 
    s8..\sustainOff\sustainOn s32\sustainOff |
  s4\sustainOn s\sustainOff\sustainOn s\sustainOff\sustainOn 
    s8.. s32\sustainOff |
  s4\sustainOn s8..\sustainOff\sustainOn s32\sustainOff s4\sustainOn
    s8.\sustainOff\sustainOn s16\sustainOff |
  s4\sustainOn s\sustainOff s8.\sustainOn s16\sustainOff s8.\sustainOn 
    s16\sustainOff |
    
  \barNumberCheck 9
  s4\sustainOn s\sustainOff\sustainOn s\sustainOff\sustainOn 
    s8..\sustainOff\sustainOn s32\sustainOff |
  s4\sustainOn s\sustainOff\sustainOn s\sustainOff\sustainOn 
    s8..\sustainOff\sustainOn s32\sustainOff |
  s4\sustainOn s\sustainOff\sustainOn s\sustainOff\sustainOn 
    s8..\sustainOff\sustainOn s32\sustainOff |
  s2.\sustainOn s8 s\sustainOff |
}

forceBreaks = {
  s1\noBreak s1\noBreak s1\break\noPageBreak % 3
  s1\noBreak s1\noBreak s1\break\noPageBreak % 6
  s1\noBreak s1\break\noPageBreak % 9
  s1\noBreak s1\break\noPageBreak % 11
}

preludeNineMusic = \score { 
  \keepWithTag #'layout
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 9"
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
    \new Devnull \forceBreaks
  >>
  \layout {}
}

preludeNineMidi = \book {
  \bookOutputName "prelude-op28-no9"
  \score { 
    \keepWithTag #'midi
    <<
      \new Staff = "upper" << \rightHand \dynamics \pedal >>
      \new Staff = "lower" << \leftHand \dynamics \pedal >>
    >>
    \midi {}
  }
}
