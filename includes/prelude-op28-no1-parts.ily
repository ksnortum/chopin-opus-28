%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

beamPositionsB = \once \override Beam.positions = #'(0.5 . 0.5)
beamPositionsC = \tweak Beam.positions #'(2.25 . -0.5) \etc
beamPositionsD = \once \override Beam.positions = #'(0 . -0.5)
beamPositionsE = \tweak Beam.positions #'(1.5 . -0.5) \etc
beamPositionsF = \tweak Beam.positions #'(2.25 . 0) \etc
beamPositionsG = \tweak Beam.positions #'(2.5 . 0.25) \etc
beamPositionsH = \tweak Beam.positions #'(3.25 . 1) \etc
beamPositionsI = \tweak Beam.positions #'(3.75 . 1.5) \etc
beamPositionsJ = \tweak Beam.positions #'(4.25 . 2) \etc
beamPositionsK = \tweak Beam.positions #'(4.5 . 2.25) \etc
beamPositionsL = \tweak Beam.positions #'(4 . 1.75) \etc
beamPositionsM = \tweak Beam.positions #'(4 . 1) \etc
beamPositionsN = \tweak Beam.positions #'(2 . -0.5) \etc
beamPositionsO = \tweak Beam.positions #'(2 . -0.5) \etc
beamPositionsP = \tweak Beam.positions #'(2 . -0.5) \etc
beamPositionsQ = \tweak Beam.positions #'(12 . 13) \etc

hShiftNoteA = \tweak NoteColumn.force-hshift 0 \etc

moveTupletNumberA = 
  \tweak TupletNumber.X-offset 3
  \tweak TupletNumber.Y-offset 11
  \etc
moveTupletNumberB = 
  \tweak TupletNumber.X-offset 6
  \tweak TupletNumber.Y-offset 5 
  \etc
moveTupletNumberC = 
  \tweak TupletNumber.X-offset 6.25
  \tweak TupletNumber.Y-offset 5.25 
  \etc
moveTupletNumberD = 
  \tweak TupletNumber.X-offset 6.5
  \tweak TupletNumber.Y-offset 5.5
  \etc
moveTupletNumberE = \tweak TupletNumber.Y-offset 3.5 \etc
moveTupletNumberF = \tweak TupletNumber.Y-offset 3.75 \etc
moveTupletNumberG = \tweak TupletNumber.Y-offset 4 \etc
moveTupletNumberH = 
  \tweak TupletNumber.X-offset 2.5
  \tweak TupletNumber.Y-offset 4
  \etc
moveTupletNumberI = 
  \tweak TupletNumber.X-offset 6
  \tweak TupletNumber.Y-offset 5
  \etc
moveTupletNumberJ = \tweak TupletNumber.Y-offset 4.5 \etc
moveTupletNumberK = \tweak TupletNumber.Y-offset 3 \etc
moveTupletNumberL = 
  \tweak TupletNumber.X-offset 2.5
  \tweak TupletNumber.Y-offset 3
  \etc
moveTupletNumberM = \tweak TupletNumber.Y-offset 3 \etc
moveTupletNumberN = 
  \tweak TupletNumber.X-offset 6
  \tweak TupletNumber.Y-offset 15
  \etc
moveTupletNumberO = 
  \tweak TupletNumber.X-offset 6
  \tweak TupletNumber.Y-offset 3.5
  \etc
moveTupletNumberP = 
  \tweak TupletNumber.X-offset 3
  \tweak TupletNumber.Y-offset 12
  \etc
  
moveDynamicsA = \tweak DynamicText.X-offset -0.5 \etc
moveDynamicsB = \tweak DynamicText.Y-offset 0.5 \etc

slurShapeA = \shape #'((-2 . 0) (-3.5 . 3) (-10 . 6) (-1.5 . 2)) \etc

slurPositionA = \tweak positions #'(0 . 9) \etc

%%% Music %%%

global = {
  \time 2/8
  \key c \major
  \accidentalStyle piano
}

rightHandUpper = \relative {
  \voiceOne
  \omit TupletBracket
  \moveTupletNumberA \tuplet 3/2 { \staffDown r16 g( \staffUp c }
    \tuplet 3/2 { g'8 a16) } |
  \scaleDurations 2/3 {
    \staffDown r16 g,( \staffUp d' g8 a16) |
    \staffDown r16 g,( \staffUp c g'8 a16) |
    \staffDown r16 b,( \staffUp e b'8 c16) |
    \oneVoice r16 \voiceOne e,( a e'8 d16) |
    \oneVoice r16 \voiceOne e,( a e'8 d16) |
    \oneVoice r16 \voiceOne e,( g e'8 d16) |
    \oneVoice r16 \voiceOne \staffDown b,( \staffUp d b'8 a16) |
      
    \barNumberCheck 9
    \staffDown r16 g,( \staffUp c g'8 a16) |
    \staffDown r16 g,( \staffUp d' g8 a16) |
    \staffDown r16 g,( \staffUp c g'8 a16) |
    \staffDown r16 b,( \staffUp e b'8 c16) |
    \oneVoice r16 \voiceOne cs,( f cs'8 d16) |
    \oneVoice r16 \voiceOne ds,( g ds'8 e16) |
    \oneVoice r16 \voiceOne g,( a g'8 f16) |
    \oneVoice r16 \voiceOne ds,( g ds'8 e16) |
    
    \barNumberCheck 17
    \oneVoice r16 \voiceOne e,( a e'8 f16) |
  }
  \moveTupletNumberB \tuplet 5/4 { fs,16([ b] fs'8 g16) } |
  \moveTupletNumberC \tuplet 5/4 { gs,16([ c] gs'8 a16) } |
  \moveTupletNumberD \tuplet 5/4 { as,16([ d] as'8 b16) } |
  \moveTupletNumberH \tuplet 3/2 { \oneVoice r16 \voiceOne d,-\slurPositionA (
    e } \tuplet 3/2 { d'8 c16) } |
  \scaleDurations 2/3 { \oneVoice r16 \voiceOne b,( c b'8 a16) } |
  \moveTupletNumberI \tuplet 5/4 { a,16([ c] a'8 g16) } |
  \moveTupletNumberL \tuplet 3/2 { \oneVoice r16 \voiceOne e,( g }
    \tuplet 3/2 { e'8 d16) } |
  
  \barNumberCheck 25
  \moveTupletNumberN \tuplet 5/4 { \staffDown g,,16([ \staffUp c] g'8 a16) } |
  \moveTupletNumberO \tuplet 5/4 { e16([ g] e'8 d16) } |
  \moveTupletNumberP \tuplet 3/2 { \staffDown r16 g,,( \staffUp c } 
    \tuplet 3/2 { g'8 a16) } |
  \scaleDurations 2/3 { \oneVoice r16 \voiceOne e( g e'8 d16) } |
  \tag #'layout { 
    s8 c[->^( |
    c8]) c[->^( |
    c8]) c[->^( |
    c8]) c-> |
  }
  \tag #'midi {
    s8 c->~ |
    c8 c->~ |
    c8 \tempo 8 = 110 c->~ |
    c8 \tempo 8 = 100 c-> |
  }
  
  \barNumberCheck 33
  \tempo 8 = 90
  s8 \scaleDurations 2/3 { s8 \clearStem c,16_~ | }
  <c e>4\fermata |
  \bar "|."
}

rightHandLower = \relative {
  \voiceTwo
  \override Beam.auto-knee-gap = 0
  \scaleDurations 2/3 { 
    s8. e'16 c \down a |
    s8. \up f'16 d \down a
    s8. \up e'16 c \down a |
    s8. \up g'16 e \down c |
    \voiceThree
    s8. \staffUp \beamPositionsC c'16 a \hShiftNoteA d, |
    s8. \beamPositionsC c'16 a \hShiftNoteA d, |
    s8. \beamPositionsC b'16 g \hShiftNoteA d |
    s8. \stemDown f16 d \down a |
    
    \barNumberCheck 9
    s8. \up e'16 c \down a |
    s8. \up f'16 d \down a |
    s8. \up e'16 c \down a |
    s8. \up g'16 e \down c |
    s8. \staffUp \beamPositionsE a'16 f \hShiftNoteA d |
    s8. \beamPositionsF c'16 g \hShiftNoteA e |
    s8. \beamPositionsG c'16 a \hShiftNoteA f |
    s8. \beamPositionsF c'16 g \hShiftNoteA e |
    
    \barNumberCheck 17
    s8. \beamPositionsG c'16 a \hShiftNoteA f |
  }
  \scaleDurations 4/5 {
    s8 \beamPositionsH d'16 b \hShiftNoteA g |
    s8 \beamPositionsI e'16 c \hShiftNoteA a |
    s8 \beamPositionsJ g'16 d \hShiftNoteA b |
  }
  \scaleDurations 2/3 {
    s8. \beamPositionsK g'16 e \hShiftNoteA c |
    s8. \beamPositionsL ds16 c \hShiftNoteA a |
  }
  \scaleDurations 4/5 {
    s8 \beamPositionsM e'16 c \hShiftNoteA g |
  }
  \scaleDurations 2/3 {
    s8. \beamPositionsN b16 g \hShiftNoteA d |
  }
  
  \barNumberCheck 25
  \scaleDurations 4/5 {
    s8 \stemDown e16 c \down a |
    s8 \staffUp \beamPositionsO b'16 g \hShiftNoteA d |
  }
  \scaleDurations 2/3 {
    s8. \stemDown e16 c \down a |
    s8. \staffUp \beamPositionsP b'16 g \hShiftNoteA d |
    \oneVoice r16 \voiceOne c_( f \voiceTwo a f <e g>) |
    \repeat unfold 3 { r16 \voiceOne c_( f \voiceTwo a f <e g>) | }
    
    \barNumberCheck 33
    \set tieWaitForNote = ##t
    s8. \voiceOne \staffDown \beamPositionsQ e,16~ g~ \staffUp c |  
  }
  \staffDown \crossStaff { <e, g>4 }
}

rightHand = <<
  \clef treble
  \global
  \mergeDifferentlyDottedOn
  \set Score.tempoHideNote = ##t 
  \tempo "Agitato" 8 = 120
  \new Voice \rightHandUpper
  \new Voice \rightHandLower
>>

leftHandUpper = \relative {
  \voiceFour
  \scaleDurations 2/3 {
    s16 g8.*4/3[ a16] |
    s16 g8.*4/3[ a16] |
    s16 g8.*4/3[ a16] |
    s16 \beamPositionsB b8.*4/3[ c16] |
    s16 \staffUp e8.*4/3[ d16] |
    s16 e8.*4/3[ d16] |
    s16 e8.*4/3[ d16] |
    s16 \staffDown \beamPositionsD \hShiftNoteA b8.*4/3[ a16] |
    
    \barNumberCheck 9
    s16 \hShiftNoteA g8.*4/3[ a16] |
    s16 \hShiftNoteA g8.*4/3[ a16] |
    s16 \hShiftNoteA g8.*4/3[ a16] |
    s16 \beamPositionsB \hShiftNoteA b8.*4/3[ c16] |
    s16 \staffUp cs8.*4/3[ d16] |
    s16 ds8.*4/3[ e16] |
    s16 g8.*4/3[ f16] |
    s16 ds8.*4/3[ e16] |
    
    \barNumberCheck 17
    s16 e8.*4/3[^\stretto f16] |
  }
  \scaleDurations 4/5 {
    fs8.*4/3[ g16] |
    gs8.*4/3[ a16] |
    as8.*4/3[ b16] |
  }
  \scaleDurations 2/3 {
    s16 d8.*4/3[ c16] |
    s16 b8.*4/3[ a16] |
  }
  \scaleDurations 4/5 {
    a8.*4/3[ g16] |
  }
  \scaleDurations 2/3 {
    s16 e8.*4/3[ d16] |
  }
  
  \barNumberCheck 25
  \scaleDurations 4/5 {
    \staffDown \hShiftNoteA g,8.*4/3[ a16] |
    \staffUp e'8.*4/3[ d16] |
  }
  \scaleDurations 2/3 {
    s16 \staffDown \hShiftNoteA g,8.*4/3[ a16] |
    s16 \staffUp e'8.*4/3[ d16] |
    \repeat unfold 4 { s16 c8 s8. | }
  }
    
  \barNumberCheck 33
  \hideNotes
  \voiceThree
  \staffDown c,,8-\slurShapeA ^( s8 |
  \staffUp e''4) |
}

leftHandLower = \relative {
  \voiceFour
  \tuplet 3/2 { c,16( g' e') } r8 |
  \scaleDurations 2/3 { b,16( g' f') } r8 |
  \scaleDurations 2/3 { c,16( g' e') } r8 |
  \scaleDurations 2/3 { e,16( c' g') } r8 |
  \scaleDurations 2/3 { f,16^( c' a') } \oneVoice r8 |
  \voiceFour \scaleDurations 2/3 { fs,16^( d' c') } \oneVoice r8 |
  \voiceFour \scaleDurations 2/3 { g,16^( f' b) } \oneVoice r8 |
  \voiceFour \scaleDurations 2/3 { g,,16( g' f') } r8 |
  
  \barNumberCheck 9
  \scaleDurations 2/3 { c,16( g' e') } r8 |
  \scaleDurations 2/3 { b,16( g' f') } r8 |
  \scaleDurations 2/3 { c,16( g' e') } r8 |
  \scaleDurations 2/3 { e,16( c' g') } r8 |
  \scaleDurations 2/3 { f,16^( c' a') } \oneVoice r8 |
  \scaleDurations 2/3 { g,16^( c bf') } r8 |
  \scaleDurations 2/3 { a,16^( f' c') } r8 |
  \scaleDurations 2/3 { g,16^( c c') } r8 |
  
  \barNumberCheck 17
  \scaleDurations 2/3 { a,16^( f' c') } r8 |
  \tupletUp \moveTupletNumberE \tuplet 3/2 { b,16^( g' d') } r8 |
  \tupletUp \moveTupletNumberF \tuplet 3/2 { c,16^( g' e') } r8 |
  \tupletUp \moveTupletNumberG \tuplet 3/2 { d,16^( g f') } r8 |
  \tupletUp \moveTupletNumberJ \tuplet 3/2 { e,16^( c' g') } r8 |
  \voiceFour \scaleDurations 2/3 { fs,,16^( ds' c') } \oneVoice r8 |
  \voiceFour \tupletUp \moveTupletNumberK \tuplet 3/2 { g,16^( e' c') } 
    \oneVoice r8 |
  \voiceFour \tupletUp \moveTupletNumberM \tuplet 3/2 { g,16^( f' b) } 
    \oneVoice r8 |
  
  \barNumberCheck 25
  \voiceFour \tuplet 3/2 { c,,16( g' e') } r8 |
  \tuplet 3/2 { c,16( g' f') } \oneVoice r8 |
  \voiceFour \scaleDurations 2/3 { c,16( g' e') } r8 |
  \scaleDurations 2/3 { c,16^( g' f') } \oneVoice r8 |
  \repeat unfold 2 {
    \voiceFour \scaleDurations 2/3 { c,16^( g' g') } \oneVoice r8 |
  }
  \voiceFour \scaleDurations 2/3 { c,,16^( g' g') } \oneVoice r8^\rit |
  \voiceFour \scaleDurations 2/3 { c,,16^( g' g') } \oneVoice r8 |
  
  \barNumberCheck 33
  \set tieWaitForNote = ##t
  \scaleDurations 2/3 {
    \voiceFour c,,16~ g'~ c~ s8. |
  }
  <c, g' c>4\fermata |
}

leftHand = <<
  \clef bass
  \global
  \mergeDifferentlyDottedOn
  \new Voice \leftHandUpper
  \new Voice \leftHandLower
>>

dynamics = {
  \override TextScript.Y-offset = -0.5
  s4\mf |
  s4 * 3 |
  s4\< |
  s8 \scaleDurations 2/3 { s8 s16\! }
  \scaleDurations 2/3 {
    s16 s8\> s8. |
    s8. s16 s8\! |
  }
  
  \barNumberCheck 9
  s4\tweak X-offset 0 \mf |
  s4 * 3 |
  s4\cresc |
  s4 * 3 |
  
  \barNumberCheck 17
  s4 * 3 |
  s8 \scaleDurations 2/3 { s8 s16\! } |
  s4\offset X-offset 0.25 \ff |
  s4\> |
  s4 |
  s8 \scaleDurations 2/3 { s8 s16\! } |
  
  \barNumberCheck 25
  s8-\moveDynamicsA \p s |
  \scaleDurations 2/3 { s8\< s16\! s8\> s16\! } |
  s4 |
  \scaleDurations 2/3 { s8\< s16\! s8\> s16\! } |
  s8\p s\< |
  s8 \scaleDurations 2/3 { s16\! s s\> } |
  s4 |
  \scaleDurations 2/3 { s8 s16\! } s8 |
  s4-\moveDynamicsB \pp |
  s4 |
}

pedal = {
  \scaleDurations 2/3 {
    \repeat unfold 3 { s8.\sd s8 s16\su | }
    s8.\sd s8 \override SustainPedal.Y-offset = 1.5 s16\su |
    \repeat unfold 2 { s8.\sd s8 s16\su | }
    \override SustainPedal.Y-offset = 2.5
    s8.\sd s8 s16\su |
    \revert SustainPedal.Y-offset
    s8.\sd s8 \override SustainPedal.Y-offset = 1 s16\su |
    
    \barNumberCheck 9
    \repeat unfold 3 { s8.\sd s8 s16\su | }
    s8.\sustainOn s8 \override SustainPedal.Y-offset = 2 s16\sustainOff |
    s8.\sd s8 s16\su |
    \revert SustainPedal.Y-offset
    \repeat unfold 2 { s8.\sd s8 s16\su | }
    s8.\sd s8 \override SustainPedal.Y-offset = 1 s16\su |
    
    \barNumberCheck 17
    \repeat unfold 4 { s8.\sd s8 s16\su | }
    \override SustainPedal.Y-offset = 3
    \repeat unfold 4 { s8.\sd s8 s16\su | }
    
    \barNumberCheck 25
    \revert SustainPedal.Y-offset
    \repeat unfold 8 { s8.\sd s8 s16\su | } |
  }
}

preludeOneMusic = \score { 
  \keepWithTag #'layout
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 1"
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
  >>
  \layout {}
}

preludeOneMidi = \book {
  \bookOutputName "prelude-op28-no1"
  \score { 
    \keepWithTag #'midi
    <<
      \new Staff = "upper" << \rightHand \dynamics \pedal >>
      \new Staff = "lower" << \leftHand \dynamics \pedal >>
    >>
    \midi {}
  }
}