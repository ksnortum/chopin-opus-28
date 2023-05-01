%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

spA = \tweak positions #'(0 . 0) \etc
spB = \tweak positions #'(0 . 0) \etc
spC = \tweak positions #'(0 . 0) \etc
beamPositionsA = \tweak Beam.positions #'(-5.5 . -3) \etc
beamPositionsB = \tweak Beam.positions #'(-5 . -4) \etc
beamPositionsC = \tweak Beam.positions #'(3 . 6) \etc
beamPositionsD = \tweak Beam.positions #'(-3 . -5) \etc

slurShapeA = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 1.5) (0 . 1.5) (0 . 0.5))
                      ) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 1.5) (0 . 2.5) (0 . 2.5))
                      ) \etc
slurShapeC = \shape #'((0 . 0) (0 . 0.75) (0 . 0) (0 . 0)) \etc
slurShapeD = \shape #'((0 . 0) (0 . 1) (0 . -3) (0 . -5)) \etc

%%% Music %%%

global = {
  \time 6/8
  \key d \minor
  \accidentalStyle piano
}

rightHand = \relative {
  \clef treble
  \global
  \set Score.tempoHideNote = ##t 
  \tempo "Allegro appassionato" 4. = 72
  \mergeDifferentlyDottedOn
  
  R2. * 2 |
  a'4\(^\f f8 d4.~ |
  d4. f8 a8. d16 |
  c2~ c8. bf16 |
  a4.\) r4 r16 a\( |
  a4 r16 f \grace { d16[( e f]) } e8-> d\) r |
  r4 f8-\slurShapeA \( a d8. f16 |
  
  \barNumberCheck 9
  e2~ e8. d16 |
  a4 \grace { a16[ b] } \trillInsideSlur \afterGrace 15/16 b2\startTrillSpan 
    { a16[\stopTrillSpan b] } |
  c4. bf4 a8 |
  \trillInsideSlur \afterGrace 15/16 g4.\startTrillSpan 
    { f16[\stopTrillSpan g] } a4 r16 f |
  c2.\) |
  \omit TupletBracket
  \omit TupletNumber
  \tuplet 28/6 {
    \magnifyMusic #2/3 {
      \once \normalsize c8->-\beamPositionsA[( d c b c d e f g a bf c d e f g
      a bf c d e \ottava 1 f g a bf c d e]
    }
  }
  f4) \ottava 0 r8 r4 r8 |
  \afterGrace 15/16 b,,,4.\(\startTrillSpan { a16[\stopTrillSpan b] } 
    c4 r16 a |
    
  \barNumberCheck 17
  e4\) f''4->\(~ \tuplet 13/2 { \magnifyMusic #2/3 { f8 e c a f e c a f e 
    \clef bass c a f } } |
  e4\) \tuplet 28/4 { \magnifyMusic #2/3 { \once \normalsize 
    e8(-\beamPositionsB[ f e ds e fs gs a b c \clef treble d e fs gs a b c d 
    e fs gs a b c d e fs gs]
  } } |
  a4-.) r8 r4 r8 |
  R2. |
  e,,4^\( c8 a4.~ |
  a4. c8 e8. a16 |
  g2~ g8. f16 |
  e4.\) r4 r16 e\( |
  
  \barNumberCheck 25
  e4 r16 c \grace { a16[( b c]) } b8-> a\) r |
  r4 c8-\slurShapeB \( e a8. c16 |
  b2~ b8. a16 |
  e4 \grace { e16[ fs] } \trillInsideSlur \afterGrace 15/16 fs2\startTrillSpan
    { e16[\stopTrillSpan fs] } |
  g4. f4 e8 |
  \trillInsideSlur \afterGrace 15/16 d4.\startTrillSpan 
    { c16[\stopTrillSpan d] } e4 r16 c |
  g2.\) |
  \tuplet 28/6 {
    \magnifyMusic #2/3 {
      \once \normalsize g8->-\beamPositionsC[( a g fs g a b c d e f g a b c 
      d e f g a b \ottava 1 c d e f g a b]
    }
  } |
  
  \barNumberCheck 33
  c4-.) \ottava 0 r8 r4 r8 |
  \afterGrace 15/16 fs,,,4._(\startTrillSpan { e16[\stopTrillSpan fs] } 
    g4 r16 e |
  b4) c''8->(~ \tuplet 13/3 { \magnifyMusic #2/3 {
    c8 b g e c b g e \clef bass c b g e c
  } } |
  b4.->)~ \tuplet 19/3 { \magnifyMusic #2/3 {
    b8( c ds fs a c \clef treble ds fs a c ds fs a c \ottava 1 ds fs a c ds
  } } |
  e4-.) \ottava 0 r8 g,,,4.^(~ |
  g4 g8 \appoggiatura { g16[ bf] } af4) r16 g\( |
  g4 ef8 c4.~ |
  c4. ef8 g8. c16 |
  
  \barNumberCheck 41
  bf4 af8 ef4.~ |
  ef8\)\noBeam af8.-\slurShapeC \( af16 
    << { af4. } \\ { af16 \textInsideSlur f^\conForza gf ef gf af, } >> |
  af'4 f8 df4.~ |
  df4 f8 af df8. f16 |
  ef4 df8 af4.\) |
  r4 f8\( af df8. f16 |
  ef4 df8 a4.->\)~ |
  a8 a^\( a a[ f r16 g] |
  
  \barNumberCheck 49
  a2.->\)~ |
  a8 <a a'>\( q q \slashedGrace { <c c'>8 } <bf bf'>8. <a a'>16 |
  q4 <f f'>8 <d d'>4.\)~ |
  q4\( <f f'>8 <a a'> <d d'>8. <f f'>16 |
  <e e'>4 <d d'>8\) <g, g'>( <d' d'>8. <f f'>16 |
  <e e'>4 <d d'>8) <gs, gs'>\( <d' d'> <f f'>\) |
  \undo \omit TupletNumber
  \tuplet 3/2 8 { 
    \ottava 1 <d'' f>16[\( <cs e> <c ef>] <b d>[ <bf df> <a c>]
    <gs b>[ <g bf> <fs a>] \omit TupletNumber <f af>[ <e g> <ds fs>] 
    <d f>[ <cs e> <c ef>] <b d>[ <bf df> <a c>] \ottava 0
  } |
  \tuplet 3/2 8 { 
    <gs b>[ <g bf> <fs a>] <f af>[ <e g> <ds fs>] <d f>[ <cs e> <c ef>] 
    <b d>[ <as cs> <a c>] <gs b>[ <g bf> <fs a>] <f gs>-.[ <e gs>-. <d gs>-.]
  } |
  
  \barNumberCheck 57
  a4\) r16 a'^\( a4.->~ |
  \undo \omit TupletNumber
  a8 g8. f16 \tuplet 7/6 { e16 f e d e f d } |
  <a a'>8-.\) r <a' a'>-. \ottava 1 <a' a'>4.->\(~ |
  q8 <g g'>8. <f f'>16 \tuplet 7/6 { \stemDown <e e'>16[ <f f'> <e e'> <d d'> 
    <e e'> <f f'>\) r32 <d d'>]\( \stemNeutral 
  } |
  <bf' bf'>8 <e, e'> <f f'> <a a'> <g g'> \ottava 0 <bf, bf'> |
  <d d'>8 <g, g'> <a a'> <c c'>[ <bf bf'>\) r16 <e, e'>]\( |
  <g g'>8 <bf, bf'> <c c'> <e e'> <d d'> <g, g'> |
  <bf bf'>4.-> \clef bass <cs, cs'>4.-> |
  
  \barNumberCheck 65
  <d d'>4->\) r8 r4 r8 \clef treble |
  \omit TupletNumber
  \ottava 1 <f''' f'>4->(~ \tuplet 22/4 { \magnifyMusic #2/3 {
    \beamPositionsD f'8 e d b g f e d \ottava 0 b g f e d b g! f e d 
    \clef bass b g f e
  } } |
  d2->) r4 \clef treble |
  <<
    { <b' b'>4.( <bf bf'> | <a f' a>4) \oneVoice r8 r4 r8 | }
    \\
    { f'2. | s2. | }
  >> 
  \ottava 1 <f'' f'>4->(~ \tuplet 22/4 { \magnifyMusic #2/3 {
    \beamPositionsD f'8 e d b g f e d \ottava 0 b g f e d b g! f e d 
    \clef bass b g f e
  } } |
  d2->) r4 \clef treble |
  \undo \omit TupletNumber
  \tuplet 5/3 4. { <b' f' b>8->^\( q q q q  q-> <bf f' bf> q q q } |
  <a f' a>4-.\)\arpeggio r8 \ottava 1 <d'' d'>4._>-\slurShapeD ( |
  \omit TupletNumber
  \tuplet 24/6 {
    \magnifyMusic #2/3 {
      bf'8[ a f d \ottava 0 bf a f d bf a f d \staffDown \clef bass bf a f d 
        bf a f d bf a f e] |
    }
  }
  d2^>) r4 |
  d2^> r4 |
  d2^> r4\fermata |
  \bar "|."
}

leftHandUpper = \relative {
  \voiceThree
  \repeat unfold 8 { s16 a,4 s16 s a4 s16 | }
  
  \barNumberCheck 9
  s16 a4 s16 s a4 s16 |
  s16 a4 s16 s g4 s16 |
  s16 a4 s16 s4. |
}

leftHandLower = \relative {
  \voiceFour
  \slurUp
  \repeat unfold 8 { d,16-\spA( a' f' d, a''8) d,,16-\spA( a' f' d, a''8) | }
  
  \barNumberCheck 9
  d,,16-\spA( a' f' d, a''8) d,,16-\spA( a' f' d, a''8) |
  d,,16-\spA( a' f' d, a''8) d,,16-\spB( g f' d, g'8) |
  c,,16-\spC( a' f' c, a''8) c,,16( a' f' c, a''8) |
  c,,16( g' f' c, g''8) c,,16( g' f' c, g''8) |
  c,,16( bf' f' c, g''8) c,,16( bf' f' c, g''8) |
  c,,16( bf' e c, g''8) c,,16( bf' e c, g''8) |
  f,16( c' a' f, c''8) f,,16( c' a' f, c''8) |
  f,,16( ds' a' f, b'8) f,16( b a' f, b'8) |
  
  \barNumberCheck 17
  e,,16( c' a' e, c''8) e,,16( c' a' e, c''8) |
  e,,16( d' gs e, b''8) e,,16( d' gs e, b''8) |
  \repeat unfold 6 { a,,16( e' c' a, e''8) a,,16( e' c' a, e''8) | }
  
  \barNumberCheck 25
  \repeat unfold 3 { a,,16( e' c' a, e''8) a,,16( e' c' a, e''8) | }
  a,,16( e' c' a, e''8) a,,16( d c' a, d'8) |
  g,,16( e' c' g, e''8) g,,16( e' c' g, e''8) |
  g,,16( d' c' g, d''8) g,,16( d' c' g, d''8) |
  g,,16( d' c' g, d''8) g,,16( d' c' g, d''8) |
  g,,16( f' b g, d''8) g,,16( f' b g, d''8) |
  
  \barNumberCheck 33
  c,16( g' e' c, g''8) c,,16( g' e' c, g''8) |
  c,,16( fs e' c, fs'8) c,16( fs e' c, fs'8) |
  b,,16( g' e' b, g''8) b,,16( g' e' b, g''8) |
  b,,16( a' ds b, fs''8) b,,16( a' ds b, fs''8) |
  e,16( b' g' e, b''8) e,,16( b' g' e, b''8) |
  ef,,16->( b' g' ef, b''8) d,,16->( b' f' d, g'8) |
  c,,16( g' ef' c, g''8) c,,16( g' ef' c, g''8) |
  c,,16( g' ef' c, g''8) c,,16( g' ef' c, g''8) |
  
  \barNumberCheck 41
  c,,16( af' ef' c, af''8) c,,16( af' ef' c, af''8) |
  c,,16( af' gf' c,, af''8) c,,16( af' gf' c,, af''8) |
  \repeat unfold 4 { df,,16( af' f' df, af''8) df,,16( af' f' df, af''8) | }
  \repeat unfold 2 { df,,16( a' f' df, a''8) df,,16( a' f' df, a''8) | }
  
  \barNumberCheck 49 
  df,,16( a' f' df, a''8) df,,16( a' f' df, a''8) |
  cs,,16( a' f' cs, a''8) cs,,16( a' f' cs, a''8) |
  d,,16( a' f' d, a''8) d,,16( a' f' d, a''8) |
  d,,16( a' f' d, a''8) d,,16( a' f' d, a''8) |
  bf,,16( g' d' bf, e'8) bf,16( g' d' bf, e'8) |
  \repeat unfold 3 { bf,16( gs' d' bf, f''8) bf,,16( gs' d' bf, f''8) | }
  
  \barNumberCheck 57
  \repeat unfold 4 { a,,16( f' d' a, f''8) a,,16( f' d' a, f''8) | }
  \repeat unfold 3 { a,,16( g' d' a, e''8) a,,16( g' d' a, e''8) | }
  a,,16( g' d' a, e''8) a,,16( g' a a, e''8) |
  
  \barNumberCheck 65
  d,16( a' f' d, a''8) d,,16( a' f' d, a''8) |
  d,,16( gs f' d, gs'8) d,16( gs f' d, gs'8) |
  d,16( a' f' d, a''8) d,,16( a' f' d, a''8) |
  d,,16( gs f' d, gs'8) d,16( gs f' d, gs'8) |
  d,16( a' f' d, a''8) d,,16( a' f' d, a''8) |
  d,,16( gs f' d, gs'8) d,16( gs f' d, gs'8) |
  d,16( a' f' d, a''8) d,,16( a' f' d, a''8) |
  d,,16( gs f' d, gs'8) d,16( gs f' d, gs'8) |
  
  \barNumberCheck 73
  <d, a' f'>4\arpeggio r8 \clef treble <f'' a c f>4.-> |
  R2. |
  \override MultiMeasureRest.Y-offset = 0
  \staffUp R2. * 3 |
}

leftHand = <<
  \clef bass
  \global
  \new Voice \leftHandUpper
  \new Voice \leftHandLower
>>

dynamics = {
  \override TextScript.Y-offset = -0.5
  s2.\f |
  s2. |
  s4.\> s\! |
  s4. s\< |
  s2.\> |
  s2.\! |
  s4\> s16 s\! s4. |
  s4 s8\< s4. |
  
  \barNumberCheck 9
  s2.\> |
  s4\! \once \override Hairpin.to-barline = ##f s8\< s4. |
  s4.\! s |
  s2. * 2 |
  s2.\< |
  s2.\!\fz |
  s2. |
  
  \barNumberCheck 17
  s2. |
  s4. s4.\< |
  s2.\!^\fzSempreForte |
  s2. |
  s4.\f\> s\! |
  s4. s\< |
  s2.\> |
  s2.\! |
  
  \barNumberCheck 25
  s2. |
  s4 s8\< s4. |
  s2.\> |
  s4\! \once \override Hairpin.to-barline = ##f s8\< s4. |
  s2.\! |
  s2. * 2 |
  s8 s4\< s4. |
  
  \barNumberCheck 33
  s2.\fz |
  s2. * 2 |
  s4. s\< |
  s2.\fz |
  s2. * 2 |
  s2.\< |
  
  \barNumberCheck 41
  s4.\> s\! 
  s4. s\cresc |
  s2 s8. s16\! |
  s2.\< |
  s4.\> s\! |
  s4 s8\p s4. |
  s2. * 2 |
  
  \barNumberCheck 49
  s2. |
  s8 s4\< s4. |
  s2.\f |
  s4. s\cresc |
  s2. * 2 |
  s2.\ff |
  s2. |
  
  \barNumberCheck 57
  s2. * 2 |
  s4 s8\cresc s4. |
  s2 s8. s16\! |
  s2.^\fffStretto |
  s2. * 3 |
  
  \barNumberCheck 65
  s2. |
  s4^\sempreFF s16 s\> s4 s16 s\! |
  s2. |
  s4.\> s\! |
  s2. |
  s4.\> s4 s16 s\! |
  s2. |
  s8.^\stretto s\< s4. |
  
  \barNumberCheck 73
  s2.\fz |
  s2.-\tweak X-offset 0 \fff |
  s2. * 3 |
}

pedal = {
  s2.\sustainOn |
  s2. * 2 |
  s2 s8. s16\sustainOff |
  s2\sustainOn s8. s16\sustainOff |
  s2.\sustainOn |
  s2. * 2 |
  
  \barNumberCheck 9
  s2. |
  s4 s8\sustainOff s4\sustainOn s8\sustainOff |
  \repeat unfold 2 { s2\sustainOn s8. s16\sustainOff | }
  s2.\sustainOn |
  s2.\sustainOff\sustainOn |
  s2.\sustainOff\sustainOn |
  s2\sustainOff\sustainOn s8. s16\sustainOff |
  
  \barNumberCheck 17
  s2\sustainOn s8... s64\sustainOff |
  s2\sustainOn s8... s64\sustainOff |
  s2.\sustainOn |
  s2. * 2 |
  s2 s8. s16\sustainOff |
  s2\sustainOn s8. s16\sustainOff |
  s2.\sustainOn |
  
  \barNumberCheck 25
  s2. * 3 |
  s4 s8\sustainOff s4\sustainOn s8\sustainOff |
  \repeat unfold 3 { s2\sustainOn s8. s16\sustainOff | }
  s2\sustainOn s8.. s32\sustainOff |
  
  \barNumberCheck 33
  s2\sustainOn s8. s16\sustainOff |
  s2\sustainOn s8. s16\sustainOff |
  s2\sustainOn s8.. s32\sustainOff |
  s2\sustainOn s8.. s32\sustainOff |
  s2\sustainOn s8. s16\sustainOff |
  s4\sustainOn s16 s\sustainOff s4\sustainOn s16 s\sustainOff |
  s2.\sustainOn |
  s2 s8. s16\sustainOff |
  
  \barNumberCheck 41
  s2\sustainOn s8. s16\sustainOff |
  s2\sustainOn s8. s16\sustainOff |
  s2.\sustainOn |
  s2. * 2 |
  s2 s8. s16\sustainOff |
  s2.\sustainOn |
  s2. |
  
  \barNumberCheck 49
  s2. |
  s2 s8. s16\sustainOff |
  s2.\sustainOn |
  s2 s8. s16\sustainOff |
  s2\sustainOn s8. s16\sustainOff |
  s2.\sustainOn |
  s2. |
  s2 s8 s\sustainOff |
  
  \barNumberCheck 57
  s2.\sustainOn |
  s2. * 2 |
  s2 s8. s32 s\sustainOff |
  s2.\sustainOn |
  s4.\sustainOff\sustainOn s4\sustainOff\sustainOn s16 s\sustainOff |
  \repeat unfold 2 { s4.\sustainOn s4.\sustainOff\sustainOn | }
  
  \barNumberCheck 65
  s2\sustainOff\sustainOn s8. s16\sustainOff |
  s2\sustainOn s8.. s32\sustainOff |
  s2\sustainOn s8. s16\sustainOff |
  s4.\sustainOn s4.\sustainOff\sustainOn |
  s2.\sustainOff\sustainOn |
  s2\sustainOff\sustainOn s8.. s32\sustainOff |
  s2\sustainOn s8. s16\sustainOff |
  s4.\sustainOn s4\sustainOff\sustainOn s16 s\sustainOff |
  
  \barNumberCheck 73
  s2.\sustainOn |
  s4. s\sustainOff |
  s2.\sustainOn |
  s2. |
  s2 s4\sustainOff |
}

preludeTwentyFourMusic = \score { 
  \keepWithTag #'layout
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 24"
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
  >>
  \layout {}
}

preludeTwentyFourMidi = \book {
  \bookOutputName "prelude-op28-no24"
  \score { 
    \keepWithTag #'midi
    <<
      \new Staff = "upper" << \rightHand \dynamics \pedal >> 
      \new Staff = "lower" << \leftHand \dynamics \pedal >> 
    >>
    \midi {}
  }
}
