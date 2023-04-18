%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurPositionsA = \tweak positions #'(4 . 4) \etc
slurPositionsB = \tweak positions #'(5 . 5) \etc
slurPositionsC = \tweak positions #'(4 . 3) \etc

moveTrillA = \tweak Y-offset 5 \etc

%%% Music %%%

global = {
  \time 4/4
  \key f \major
  \accidentalStyle piano
}

rightHand = \relative {
  \clef treble
  \global
  \set Score.tempoHideNote = ##t 
  \tempo "Moderato" 4 = 98

  c''16^\( a f d  c f f' d  c a f d  c f f' d |
  c16 a f d  c f f' d  c a f d  c e bf' g\) |
  a16^( f c a  c f <e bf'> g)  a^( f c a  c f <e bf'> g) |
  a16^\( f c a  c f bf gs  a bf d b  c e f a\) |
  g16\( e c a  g c c' a  g e c a  g c c' a |
  g16 e c a  g c c' a  g e c a  g b f' d\) |
  \stemDown e16( c g e  g c <b f'> d)  e( c g e  \stemNeutral g c <b f'> d) |
  e16\( c g e  g c e g  c e d g,  d g d e\) |
  
  \barNumberCheck 9
  c'16^\( a f d  c f f' d  c a f d  c f f' d |
  c16 a f d  c f f' d  c a f d  c e bf' g\) |
  a16^( f c a  c f <e bf'> g)  a^( f c a  c f <e bf'> g) |
  a16^( f c a  c f a c  \ottava 1 f^\pocoRit a g c,  g c g a) |
  f'16\(^\aTempo d bf g  f bf bf' g  f d bf g  f bf bf' g |
  f16 d b g  f g b' g  f d b g  f g b' g |
  f16 d c a  g c c' a  f d c a  g c c' a |
  f16 d c a  g c c' a  g^\pocoRit e c a  g c c' g\) |
  
  \barNumberCheck 17
  c16^\(^\aTempo a f d  c f f' d  c a f d  c f f' d |
  c16 a f d  c f f' d  c a f d  c e bf' g\) | \break
  \ottava 0 a16( f c a  f c <e bf'> g)  a( f c a  f c <e bf'> g) |
  a16^( f c a  c f <e bf'> g)  a^( f c a  c f <e bf'> g) |
  a16\( f c a  c f a c  f a c f  \ottava 1 a c, f a, |
  f''4\)\fermata \ottava 0 r r2 |
  \bar "|."
}

leftHand = \relative {
  \clef bass
  \global
  \omit TupletBracket
  \mergeDifferentlyHeadedOn

  <f, c' a'>2\arpeggio r |
  <<
    { 
      c4 \grace { b'16-\slurPositionsA([ c] } \trillInsideSlur 
        c4*3/4\startTrillSpan s16\stopTrillSpan a'4 g) 
    }
    \\
    { 
      s2 \stemUp \grace { b,16[ c]~ } \stemDown c2 
    }
  >> |
  f,8( c'16 f a8 <c, g'>) f,( c'16 f a8 <c, g'>) |
  f,8\( c'16 f  a f d' b  c8 bf'16 gs  a8\) r |
  <c,, g' e'>2\arpeggio r |
  <<
    { 
      g4 \grace { fs'16-\slurPositionsB([ g] } \trillInsideSlur 
        g4*3/4-\moveTrillA\startTrillSpan s16\stopTrillSpan e'4 d) 
    }
    \\
    { 
      s2 \stemUp \grace { fs,16[ g]~ } \stemDown g2 
    }
  >> |
  c,8( g'16 c e8 <g, d'>)  c,8( g'16 c e8 <g, d'>) |
  \tupletDown
  \tuplet 3/2 4 { c,( g' c \clef treble e bf') r } r2 |
  
  \barNumberCheck 9
  \clef bass <f, c' a'>2\arpeggio r |
  <<
    { 
      c4 \clef treble \grace { b'16-\slurPositionsC([ c] } \trillInsideSlur
        c4*3/4\startTrillSpan s16\stopTrillSpan a'4 g) 
    }
    \\
    { 
      s2 \stemUp \grace { b,16[ c]~ } \stemDown c2 
    }
  >> |
  f,8( c'16 f a8 <c, g'>) f,( c'16 f a8 <c, g'>) |
  \tuplet 3/2 4 { f,8( c' f a ef'->) r } r2 |
  \tuplet 3/2 { bf,8( <f' g> d') } r4 r2 |
  \tuplet 3/2 { g,,8( f' d') } r4 r2 |
  <<
    { \tuplet 3/2 { c,8( g' c) } f2. | }
    \\
    { \omit TupletNumber \tuplet 3/2 { s8 g,2*5/6 } s2 }
  >> 
  <<
    { <c, g' bf f'>2(\arpeggio \stemDown a''8) r8 r4 }
    \\
    { \stemUp <c,, f'>4 \stemDown e'2. }
  >> |
  
  \barNumberCheck 17
  \clef bass <f,, c' a'>2\arpeggio r |
  <<
    { 
      c4 \clef treble \grace { b'16-\slurPositionsC([ c] } \trillInsideSlur
        c4*3/4\startTrillSpan s16\stopTrillSpan a'4 g) 
    }
    \\
    { 
      s2 \stemUp \grace { b,16[ c]~ } \stemDown c2 
    }
  >> |
  \clef bass f,8( c'16 f a8 <c, g'>) f,,( c'16 f a8 <c, g'>) |
  f,8( c'16 f a8 <c, g'>)  f,( c'16 f a8 <c, g'>) |
  f,8.( c'16  f a c f  \clef treble \stemDown a ef'-> a, f  
    \clef bass c a f c |
  \stemUp f,4)\fermata r r2 |
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  
  \tag layout { s1^\pDelicatiss | }
  \tag midi   { s1\p | }
  s1 * 7 | 
  
  \barNumberCheck 9
  s1 * 8 |
  
  \barNumberCheck 17
  s1\pp |
  s1 |
  s2.\p \diminESmorz s4\startTextSpan |
  s1 |
  s2... s16\stopTextSpan |
  s1 |
}

pedal = {
  s2...\sustainOn s16\sustainOff |
  s2\sustainOn s16 s\sustainOff s4. |
  s4\sustainOn s16 s8.\sustainOff s4\sustainOn s16 s8.\sustainOff |
  s4\sustainOn s16 s8.\sustainOff s2 |
  s2...\sustainOn s16\sustainOff |
  s2\sustainOn s16 s\sustainOff s4. |
  s4\sustainOn s16 s8.\sustainOff s4\sustainOn s16 s8.\sustainOff |
  s2...\sustainOn s16\sustainOff |
  
  \barNumberCheck 9
  s2...\sustainOn s16\sustainOff |
  s2\sustainOn s16 s\sustainOff s4. |
  s4\sustainOn s16 s8.\sustainOff s4\sustainOn s16 s8.\sustainOff |
  \repeat unfold 4 { s2...\sustainOn s16\sustainOff | }
  s2\sustainOn s8 s\sustainOff s8.\sustainOn s16\sustainOff |
  
  \barNumberCheck 17
  s2...\sustainOn s16\sustainOff |
  s2\sustainOn s16 s\sustainOff s4. |
  s4\sustainOn s16 s8.\sustainOff s4\sustainOn s16 s8.\sustainOff |
  s4\sustainOn s16 s8.\sustainOff s4\sustainOn s16 s8.\sustainOff |
  s1\sustainOn |
  s2 s\sustainOff |
}

preludeTwentyThreeMusic = \score { 
  \keepWithTag #'layout
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 23"
    connectArpeggios = ##t
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
  >>
  \layout {}
}

preludeTwentyThreeMidi = \book {
  \bookOutputName "prelude-op28-no23"
  \score { 
    \keepWithTag #'midi
    <<
      \new Staff = "upper" << \rightHand \dynamics \pedal >> 
      \new Staff = "lower" << \leftHand \dynamics \pedal >> 
    >>
    \midi {}
  }
}
