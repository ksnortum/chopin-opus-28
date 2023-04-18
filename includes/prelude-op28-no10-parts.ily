%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

tieShapeA = \shape #'((0.25 . 0.5) (0 . 0.85) (0 . 0.85) (-0.25 . 0.5)) \etc

%%% Music %%%

global = {
  \time 3/4
  \key cs \minor
  \accidentalStyle piano
}

rightHandUpper = \relative {
  \partial 4 
  \omit TupletBracket
  \ottava 1 \tuplet 6/4 { gs'''16(\> a gs a\! gs fss) }
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  \tuplet 3/2 { <gs cs>16(\(\> a gs) } e16\! ds 
    \tuplet 3/2 { <cs gs'>16(\> ds cs) } a\! gs 
    \ottava 0 \tuplet 3/2 { <fs cs'>16(\> gs fs) } e16\! ds |
  \tuplet 3/2 { <cs gs'>16(\> ds cs) } a\! gs 
    \tuplet 3/2 { <fs cs'>16\> gs fs } e16\! ds 
    \tuplet 3/2 { <cs gs'>16\> ds cs } b16\! a | \break
  \clef bass
  \voiceOne
  gs2.->\)-\tieShapeA _~ |
  gs2 s4 |
  \clef treble \ottava 1
  \oneVoice
  \tuplet 3/2 { <gs''' cs>16\(\> a gs } e16\! ds 
    \tuplet 3/2 { <cs gs'>16\> ds cs } a\! gs 
    \ottava 0 \tuplet 3/2 { <fs cs'>16\> gs fs } e16\! ds |
  \tuplet 3/2 { <cs gs'>16\> ds cs } a\! gs 
    \tuplet 3/2 { <fs cs'>16\> gs fs } e16\! ds 
    \tuplet 3/2 { <cs gs'>16\> ds cs } b16\! as |
  \clef bass
  \voiceTwo
  gs2^>\) s4 |
  s2. |
  
  \barNumberCheck 9
  \clef treble \ottava 1
  \oneVoice
  \tuplet 3/2 { <fs''' cs'>16\(\> gs fs } d16\! cs
    \tuplet 3/2 { <b fs'>16\> cs b } a\! gs
    \ottava 0 \tuplet 3/2 { <fs cs'>16\> gs fs } d16\! cs |
  \tuplet 3/2 { <b fs'>16\> cs b } a\! gs
    \tuplet 3/2 { <fs cs'>16\> gs fs } d16\! cs
    \tuplet 3/2 { <b fs'>16\> cs b } a\! gs |
  \clef bass
  \voiceTwo
  fs2.^>\) |
  \voiceThree
  s4 bs2 |
  \clef treble \ottava 1
  \oneVoice
  \tuplet 3/2 { <gs''' cs>16\(\> a gs } e16\! ds 
    \tuplet 3/2 { <cs gs'>16\> ds cs } a\! gs 
    \ottava 0 \tuplet 3/2 { <fs cs'>16\> gs fs } e16\! ds |
  \tuplet 3/2 { <cs gs'>16\> ds cs } a\! gs 
    \tuplet 3/2 { <fs cs'>16\> gs fs } e16\! ds 
    \tuplet 3/2 { <cs gs'>16\> ds cs } b16\! a |
  \clef bass
  \voiceOne
  gs2.->\)
  % \barNumberCheck 16
  s2 << { \voiceOne a'4->~ | a4 s2 | } \\ { \voiceTwo a,4~ | a2. | } >>
  s2. |
  \bar "|."
}

rightHandLower = \relative {
  \voiceTwo
  \partial 4 s4
  s2. * 2 |
  r4 <ds bs'>^( <cs as'> |
  <ds bs'>8)[ r16 <e cs'>]^( <fs bs ds>4 <gs e'>) |
  s2. * 2 |
  <<
    { 
      \voiceThree a'4\rest ds,2( |
      <gs, b>8)[ s16 <as cs>]( <b ds>4 \stemDown <gs gs'>->) |
    }
    \\
    { \voiceFive s4 b <fss as> | s2. }
    \\ 
    { \voiceFour r4 ds2 | ds8[ r16 ds] ds4 s | }
  >> 
  
  \barNumberCheck 9
  s2. * 2 |
  <<
    { \voiceOne g'4\rest cs,( ds | <gs, bs>8)[ s16 <gs cs>16]( ds'4 e->) | }
    \\
    { \voiceTwo r4 a,2 | ds,8[ r16 e] fs4 gs | }
  >> 
  s2. * 2 |
  \voiceTwo
  r4 <ds bs'>^( <e cs'> |
  <fs bs ds>8)[ r16 <gs e'>]( <e cs'>4) s4 |
  
  \barNumberCheck 17
  s4 <ds bs'>^( <e cs'> |
  <fs gs bs ds>8)[ r16 <gs bs e>]^( <e cs'>4) d4\rest |
}

rightHand = <<
  \clef treble
  \global
  \set Score.tempoHideNote = ##t 
  \tempo "Molto allegro" 4 = 120
  \new Voice \rightHandUpper
  \new Voice \rightHandLower
>>

leftHand = \relative {
  \clef bass
  \global
  \partial 4 r4
  <cs gs' e'>4\arpeggio r <fs, cs' a'>8\arpeggio r |
  <cs' gs' e'>8\arpeggio r <fs, cs' a'>\arpeggio r <cs gs' e'>8\arpeggio r |
  r4 gs'2*1/2 gs,4( |
  gs'8)[ r16 gs16] gs2*1/2( gs,4) |
  <cs' gs' e'>4\arpeggio r <fs, cs' a'>8\arpeggio r |
  <cs' gs' e'>8\arpeggio r <fs, cs' a'>\arpeggio r <cs gs' e'>8\arpeggio r |
  \tag layout {
    r4 ds4( \grace { css16[ ds] \slashFlag e8 } 
      \afterGrace ds4\trill { css16[ ds] } |
  }
  \tag midi {
    \tuplet 3/2 { r4. ds4 css16 ds e ds e ds cs ds | }
  }
  gs8)[ r16 gs] gs4( gs,) |
  
  \barNumberCheck 9
  <fs' cs' a'>8\arpeggio r <b fs' d'>\arpeggio r <fs cs' a'>\arpeggio r |
  <b fs' d'>8\arpeggio r <fs cs' a'>\arpeggio r r4 |
  r4
    <<
      { \voiceThree cs'2 | s4 gs2*1/2_( gs,4) | }
      \\
      { \voiceFour fs'4( ds! | gs8)[ r16 gs] s2 | }
    >> 
  <cs gs' e'>4\arpeggio r <fs, cs' a'>8\arpeggio r |
  <cs' gs' e'>8\arpeggio r <fs, cs' a'>\arpeggio r <cs gs' e'>8\arpeggio r |
  r4 gs'2*1/2 gs,4( |
  gs'8)[ r16 gs]( cs,4) r4 |
  
  \barNumberCheck 17
  r4 gs'2*1/2 gs,4( |
  gs'8)[ r16 gs]( cs,4) r4 |
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \partial 4 s4^\pLeggiero
  s2. * 3 |
  s4\< s4.\> s8\! |
  s2.\p |
}

pedal = {
  \partial 4 s4\sustainOn
  s4.. s16\sustainOff s8.\sustainOn s16\sustainOff |
  s8.\sustainOn s16\sustainOff s8.\sustainOn s16\sustainOff 
    s8.\sustainOn s16\sustainOff |
  s2. * 2 |
  s4..\sustainOn s16\sustainOff s8.\sustainOn s16\sustainOff |
  s8.\sustainOn s16\sustainOff s8.\sustainOn s16\sustainOff 
    s8.\sustainOn s16\sustainOff |
  s2. * 2 |
  
  \barNumberCheck 9
  s8.\sustainOn s16\sustainOff s8.\sustainOn s16\sustainOff 
    s8.\sustainOn s16\sustainOff |
  s8.\sustainOn s16\sustainOff s4..\sustainOn s16\sustainOff |
  s2. * 2 |
  s4..\sustainOn s16\sustainOff s8.\sustainOn s16\sustainOff |
  s8.\sustainOn s16\sustainOff s8.\sustainOn s16\sustainOff 
    s8.\sustainOn s16\sustainOff |
}

preludeTenMusic = \score { 
  \keepWithTag #'layout
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 10"
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
  >>
  \layout {}
}

preludeTenMidi = \book {
  \bookOutputName "prelude-op28-no10"
  \score { 
    \keepWithTag #'midi
    <<
      \new Staff = "upper" << \rightHand \dynamics \pedal >>
      \new Staff = "lower" << \leftHand \dynamics \pedal >>
    >>
    \midi {}
  }
}
