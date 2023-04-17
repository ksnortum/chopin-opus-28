%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.22.2"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'((0 . 2) (0 . -2) (-20 . -8) (0 . 0)) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 1) (0 . 2) (0 . 3)) 
                      ) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 4.75) (0 . 4.5) (0 . 5) (0.5 . 4)) 
                      ) \etc
slurShapeD = \shape #'((0 . 0) (2 . -1) (-1 . -2) (0 . 0)) \etc

%%% Music %%%

global = {
  \time 3/4
  \key b \minor
  \accidentalStyle piano
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Timing.beatStructure = 2,2,2
}

rightHandUpper = \relative {
  \voiceOne
  b'8->( b) b->( b) b->( b) |
  b8 b b b b b |
  b8 b d d d d |
  d8 d d d d d |
  d8 d d d d d | 
  d8 d cs cs <as cs>( <b d> |
  e4. fs8 e16 d \slurDown \acciaccatura { d8 } \slurUp cs16 b |
  <cs, fss as>8[ <d gs b> <d b' d> <cs as' cs>]) b'4\rest |
  
  \barNumberCheck 9
  b8 b b b b b |
  b8 b b b b b |
  b8 b b b b b |
  c8 c c c c c |
  c8 c c c c c |
  c8 c c c b b |
  as8 as as as b b |
  b8 b as as b b|
  
  \barNumberCheck 17
  b8 b b b as as |
  as8 as b b b b |
  b8 b as as b b |
  b8 b as as b b |
  b8 b b b as as |
  b8 b b b a->( a) |
  fs8 fs fs fs fs fs |
  fs8 fs fs fs fs fs |
  fs8 fs b4\rest fs8 fs |
  fs8 fs b4\rest b\rest |
}

rightHandLower = \relative {
  \voiceTwo
  <d' fs>4 fs fs |
  <d fs>4 q q |
  <d fs>4 b' b |
  <fs b>4 q q |
  <g b>4 b b |
  <gs b>4 q g |
  <g as>8 <g b> <g as> <fs cs'> <fs b> fs |
  s2. |
  
  \barNumberCheck 9
  <d fs>4 fs fs |
  <d fs>4 q q |
  <d g>4 g g |
  g4 <e g> q |
  <e g>4 g <e g> |
  g4 g g |
  <cs, g'>4 <cs fs> <d fs> |
  <cs g'>4 q <d g> |
  
  \barNumberCheck 17
  <d g>4 <cs fs> <cs e> |
  <cs e>4 <b d> <d g> |
  <cs g'>4 q <d fs> |
  <cs g'>4 q <d g> |
  <d g>4 <cs fs> q |
  <d fs>4 q q |
  d4 s2 |
  d4 d d |
  
  \barNumberCheck 25
  d4 s d |
  d4 s2 |
}

rightHand = <<
  \clef treble
  \global
  \set Score.tempoHideNote = ##t 
  \tempo "Assai lento" 4 = 40
  \new Voice \rightHandUpper
  \new Voice \rightHandLower
>>

leftHand = \relative {
  \clef bass
  \global
  b,16(\< d fs b d4\! cs8. d16 |
  b4.\> fs8[ d cs])\! |
  b16(\< fs' b d fs4\! e8. fs16 |
  d4.\> b8[ fs d])\! |
  g,16-\slurShapeA ( d' b' d g4 fs |
  fs4 es e8 d |
  cs8[ \acciaccatura { e8 } d8 cs as b d,] |
  e8 es fs4) \stemDown d8( cs \stemNeutral |
  
  \barNumberCheck 9
  b16\< d fs b d4\! cs8. d16 |
  b4.\> fs8[ d b]\! |
  g16\< d' g b d4 e8 f\! |
  e4.\> c8[ g c,])\! |
  c,16(\< g' e' g e'4)\! c,,16(\< g' e' g |
  e'2)\! r4 |
  e,4.( fs8 e16 d cs b) |
  e4.-\slurShapeB ( fs8 e16_\sostenutom d cs b |
  
  \barNumberCheck 17
  a16 g d e fs2 |
  g2) g'4( |
  e4. fs8 e16 d cs b) |
  e4.-\slurShapeC ( fs8 e16_\sostenutom d cs b |
  a16 g d e fs2 |
  b,2.)~ |
  b16-\slurShapeD (\< b' fs' b d4\! cs8. d16 |
  b4.\> fs8[ d cs]\! |
  
  \barNumberCheck 25
  b2.)~ |
  b4 r r |
  \bar "|."
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \tag layout { s2.^\sottoVoce | }
  \tag midi   { s2.\p | }
  s2. * 7 |
  
  \barNumberCheck 9
  s2. * 6 |
  \tag layout { s2. }
  \tag midi   { s2.\p }
  s2. |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2 s4\pp |
  s2. |
}

pedal = {
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 4 |
  s4.\sustainOn s8\sustainOff s4\sustainOn |
  s4. s8\sustainOff s4 |
}

preludeSixMusic = \score { 
  \keepWithTag #'layout
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 6"
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics = "pedal" \pedal
  >>
  \layout {}
}

preludeSixMidi = \book {
  \bookOutputName "prelude-op28-no6"
  \score { 
    \keepWithTag #'midi
    <<
      \new Staff = "upper" << \rightHand \dynamics \pedal >>
      \new Staff = "lower" << \leftHand \dynamics \pedal >>
    >>
    \midi {}
  }
}
