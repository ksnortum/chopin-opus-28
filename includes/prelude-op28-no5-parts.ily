%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

moveAccentA = \offset Y-offset -1 \etc
moveAccentB = \offset Y-offset -2 \etc

%%% Music %%%

global = {
  \time 3/8
  \key d \major
  \accidentalStyle piano
}

rightHandUpper = \relative {
  \voiceOne
  b'16( a cs, b' e a, |
  cs,16 bf' e a, cs, b' |
  e16 a, cs, bf' e a, |
  cs,16 b' e a, cs, fs) |
  \oneVoice \slurUp
  d16( a as b <cs fs> e |
  d16 d' fs, a <gs cs> b) |
  e,16( a es fs <gs cs> b |
  a e' e, a <ds, c'> b') |
  
  \barNumberCheck 9
  b,16( e c e <ds g> fs |
  e16 e' g, b <as d> cs) |
  b16( fs g b <as d> cs |
  b16 b' gs d cs b) |
  as16( fs' b, gs' es, as' |
  \repeat unfold 2 { as,16 fs' b, gs' es, as' | }
  as,16 fs' b, gs' es, a' |
  
  \barNumberCheck 17
  \voiceOne
  fs16) fs,( cs b' e a, |
  cs,16 bf' e a, cs, b' |
  e16 a, cs, bf' e a, |
  cs,16 b' e a, cs, fs) |
  \oneVoice \slurUp
  d16( a as b <cs g'> fs |
  d16 d' fs, a <gs c> b) |
  e,16( a f a <gs c> b |
  a16 e' e, a <ds, c'> b') |
  
  \barNumberCheck 25
  b,16( e c e <ds g> fs |
  e16 e' g, b <as d!> cs!) |
  b16( fs g b <as d> cs |
  b16 b' gs d cs b) |
  a16( d g, e' cs, fs' |
  \repeat unfold 3 { fs, d' g, e' cs, fs' | }
  
  \barNumberCheck 33
  fs,16) d'( d, bf' d a |
  d,16 g d' fs, d bf' |
  d16 a d, g d' fs, |
  d16 bf' d a d, d' |
  fs'8) r r |
  <g,, e' a>8\arpeggio r r |
  <fs d' fs>8 r r\fermata |
  \bar "|."
}

rightHandLower = \relative {
  \voiceTwo
  s8 s16 b'8\moveAccentA ^> a8*1/2 |
  s16 bf8\moveAccentA ^> a b8*1/2[\moveAccentA ^> |
  s16 a8] bf\moveAccentA ^> a8*1/2 |
  s16 b8\moveAccentA ^> a s16 |
  s4. * 4 |
  
  \barNumberCheck 9
  s4. * 8 |
  
  \barNumberCheck 17
  s8 s16 b8\moveAccentA ^> a8*1/2 |
  s16 bf8\moveAccentA ^> a b8*1/2[\moveAccentA ^> |
  s16 a8] bf\moveAccentA ^> a8*1/2 |
  s16 b8\moveAccentA ^> a s16 |
  s4. * 4 |
  
  \barNumberCheck 25
  s4. * 8 |
  
  \barNumberCheck 33
  s8. bf8\moveAccentA ^> a8*1/2 |
  s16 g8\moveAccentB ^> fs8 bf8*1/2[\moveAccentA ^> |
  s16 a8] g\moveAccentB ^> fs8*1/2 |
  s16 bf8\moveAccentA ^> a s16 |
}

rightHand = <<
  \clef treble
  \global
  \set Score.tempoHideNote = ##t 
  \tempo "Molto allegro" 8 = 200
  \new Voice \rightHandUpper
  \new Voice \rightHandLower
>>

leftHand = \relative {
  \clef bass
  \global
  
  r8 g16 a, g' e' |
  g,16 a, g' e' g, a, |
  g'16 e' g, a, g' e' |
  g,16 a, g' e' g, a |
  d,,16 fs' g g, a g' |
  fs b, d' fs, e d' |
  cs16 a d d, e d'|
  cs16 c fs, a, b a' |
  
  \barNumberCheck 9
  g16 e, a a' b, a' |
  g16 e e' g, fs e' |
  d16 b, e e' fs, e' |
  d16 es, b' gs' cs, d |
  cs16^\f fs, d' b, cs' cs, |
  \repeat unfold 3 { fs,16 cs'' d b, cs' cs, | }
  
  \barNumberCheck 17
  fs,16 a' g a, g' e' |
  g,16 a, g' e' g, a, |
  g'16 e' g, a, g' e' |
  g,16 a, g' e' g, a |
  d,,16 fs' g g, a \omitAccidental a' |
  fs16 b, d' f, e d' |
  c16 a d d, e d' |
  cs16 c fs, a, b a' |
  
  \barNumberCheck 25
  g16 e, a a' b, a' |
  g e e' g, fs e' |
  d16 b, e e' fs, e' |
  d16 es,  b' gs' cs, d |
  fs, d' bf g, a' a, |
  \repeat unfold 3 { d,16 a'' bf g, a' a, | }
  
  \barNumberCheck 33
  d,16 a' a' a, d, a' |
  a'16 a, d, a' a' a, |
  d,16 a' a' a, d, a' |
  a'16 a, d, a' a' a, |
  d,8 r r |
  <a' e' cs'>8\arpeggio r r |
  \slashedGrace { d,8 } <d' a' d>8 r r\fermata |
}

dynamics = {
  \override TextSpanner.Y-offset = -0.5
  
  s4.\p\< |
  s4 s16 s\! |
  s4.\> |
  s4 s16 s\! |
  \tag layout { s4\p \whiteoutCresc s8\startTextSpan | }
  \tag midi   { s4\p s8\cresc | }
  s4. * 3 |
  
  \barNumberCheck 9
  s4. * 3 |
  \tag layout { s4 s16 s\stopTextSpan | }
  \tag midi   { s4 s16 s\! | }
  s4. * 2 |
  s4.\dim |
  s4 s16 s\! |
  
  \barNumberCheck 17
  s4.\p\< |
  s4 s16 s\! |
  s4.\> |
  s4 s16 s\! |
  \tag layout { s4\p \whiteoutCresc s8\startTextSpan | }
  \tag midi   { s4\p s8\cresc | }
  s4. * 3 |
  
  \barNumberCheck 25
  s4. * 3 |
  \tag layout { s4 s16 s\stopTextSpan | }
  \tag midi   { s4 s16 s\! | }
  s4.\f |
  s4.
  s4.\dim
  s4 s16 s\! |
  
  \barNumberCheck 33
  s4.\p\<
  s4. * 3 |
  s4.\f |
}

pedal = {
  s8 s8.\sustainOn s16\sustainOff |
  s4\sustainOn s8\sustainOff\sustainOn |
  s8 s8.\sustainOff\sustainOn s16\sustainOff |
  s8.\sustainOn s\sustainOff |
  s16.\sustainOn s32\sustainOff s4 |
  s8.\sustainOn s\sustainOff |
  s4. |
  s16 s8\sustainOn s8.\sustainOff |
  
  \barNumberCheck 9
  s16.\sustainOn s32\sustainOff s4 |
  s8.\sustainOn s\sustainOff |
  s16.\sustainOn s32\sustainOff s4 |
  s8.\sustainOn s\sustainOff |
  \repeat unfold 4 { s16\sustainOn s\offset X-offset 0.5\sustainOff 
                     \override SustainPedal.Y-offset = -2
                     s\sustainOn s\sustainOff
                     \revert SustainPedal.Y-offset
                     s\sustainOn s\offset X-offset 0.6\sustainOff | }
  
  \barNumberCheck 17
  \override SustainPedal.Y-offset = -2
  s16\sustainOn s\offset X-offset 0.5\sustainOff 
    \revert SustainPedal.Y-offset
    s8.\sustainOn s16\sustainOff |
  s4\sustainOn s8\sustainOff\sustainOn |
  s8 s8.\sustainOff\sustainOn s16\sustainOff |
  s8.\sustainOn s\sustainOff |
  s16.\sustainOn s32\sustainOff s4 |
  s8\sustainOn s4\sustainOff |
  s4. |
  s16 s\sustainOn s s8.\sustainOff |
  
  \barNumberCheck 25
  s16.\sustainOn s32\sustainOff s4 |
  s8.\sustainOn s\sustainOff |
  s16.\sustainOn s32\sustainOff s4 |
  s8.\sustainOn s\sustainOff |
  \repeat unfold 4 { s16\sustainOn s\offset X-offset 0.5\sustainOff 
                     \override SustainPedal.Y-offset = -2
                     s\sustainOn s\sustainOff
                     \revert SustainPedal.Y-offset
                     s\sustainOn s\offset X-offset 0.6\sustainOff | }
  
  \barNumberCheck 33
  s4\sustainOn s16 s\sustainOff |
  s4.\sustainOn |
  s4. * 2 |
  s8 s\sustainOff s |
  s8\sustainOn s\sustainOff s |
  \grace { s8\sustainOn } s8 s\sustainOff s |
}

preludeFiveMusic = \score { 
  \keepWithTag #'layout
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 5"
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics = "pedal" \pedal
  >>
  \layout {}
}

preludeFiveMidi = \book {
  \bookOutputName "prelude-op28-no5"
  \score { 
    \keepWithTag #'midi
    <<
      \new Staff = "upper" << \rightHand \dynamics \pedal >>
      \new Staff = "lower" << \leftHand \dynamics \pedal >>
    >>
    \midi {}
  }
}
