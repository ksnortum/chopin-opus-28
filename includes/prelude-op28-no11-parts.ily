%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.22.2"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'((0 . 2) (0 . 0) (0 . 0) (0 . 0)) \etc

%%% Music %%%

global = {
  \time 6/8
  \key b \major
  \accidentalStyle piano
}

rightHand = \relative {
  \clef treble
  \global
  \set Score.tempoHideNote = ##t 
  \tempo "Vivace" 4. = 100
  
  fs''2.->( |
  es8 fs gs fs e ds) |
  <e, cs'>8\( fs \acciaccatura { as8 } gs fs fs ds' |
  <e, cs'>8 fs \acciaccatura { as8 } gs fs fs ds' |
  <e, cs'>8 fs <ds b'> fs <b ds> fs |
  <b es>8 <fs fs'> <b gs'> <fs fs'> <b e> <fs ds'>\) |
  <e cs'>8\( fs \acciaccatura { as8 } gs fs fs ds' |
  <e, cs'>8 fs \acciaccatura { as8 } gs fs fs ds' |
  
  \barNumberCheck 9
  <e, cs'>8 fs <ds b'> fs <b ds> fs |
  <b fs'>8 fs <as fss'> fss<b gs'> gs\) |
  <ds' b'>8( b \acciaccatura { fs'8 } e8 ds b <gs' b> |
  <as fs> ds, as \acciaccatura { cs8 } b8 as <ds fs>) |
  <<
    { b2-\slurShapeA \(~ b8 cs | ds2.*2/3^\pocoRit s8 \hideNotes gs,\) | }
    \\
    { 
      gs8 e \acciaccatura { \slurUp gs8 } fs e gs4 | 
      \tempo 4. = 94 b8 ds, fs \tempo 4. = 88 ds fs gs | 
    }
  >> 
  \tempo 4. = 100 <e cs'>8[(^\aTempo fs \appoggiatura { gs16[ as] } gs8] 
    fs fs ds' |
  <e, cs'>8[ fs \appoggiatura { gs16[ as] } gs8] fs fs ds' |
  
  \barNumberCheck 17
  <e, cs'>8 fs <ds b'> fs <b ds> fs |
  <b es>8 <fs fs'> <b gs'> <fs fs'> <b e> <fs ds'>) |
  <e cs'>8[( fs \appoggiatura { gs16[ as] } gs8] fs fs ds' |
  <e, cs'>8[ fs \appoggiatura { gs16[ as] } gs8] fs fs fs') |
  \acciaccatura { ds,8 } fs'2.( |
  \tempo 4. = 78 es8 fs gs fs e ds |
  % \barNumberCheck 23
  ds4.) 
    <<
      { \voiceOne css8( ds e | ds cs b ds cs b | <ds, b'>2.) | }
      \\
      { \voiceTwo fss4. | gs4. e | s2. | }
    >> 
  \staffDown
  \voiceOne
  \tempo 4. = 72 <fs, ds' fs>2.( |
  <fs b ds>2.) |
  \bar "|."
}

leftHand = \relative {
  \clef bass
  \global

  R2. * 2 |
  as8 fs cs fs, cs' fs |
  as8 fs cs fs, cs' fs |
  b,8 fs' b, fs' ds b' |
  ds8 fs, b ds, fs b, |
  as'8 fs cs fs, cs' fs |
  as8 fs cs fs, cs' fs |
  
  \barNumberCheck 9
  b,8 fs' b, fs' ds b' |
  ds8 fs, cs' e, b' ds, |
  gs,8 ds' b' gs ds' b |
  ds,8 fs' as, fs ds' as |
  \stemDown e,8 b'' b, \stemNeutral gs' b e, |
  b8 es fs cs' b gs |
  as8 fs cs fs, cs' fs |
  as8 fs cs fs, cs' fs |
  
  \barNumberCheck 17
  b,,8 fs' b fs' ds b' |
  css8 ds e ds cs b |
  as8[ r cs,] fs, cs' fs |
  as8 fs cs fs, cs' as' |
  <b, fs' ds'>2. |
  R2. |
  r4 r8 <ds as'>4.( |
  <gs b>4. <fs as> |
  
  \barNumberCheck 25
  <b, fs'>2.) |
  \voiceFour
  <b, b'>4.( <fs fs'> |
  <b b'>2.) |
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \tag layout { s2.-\tweak X-offset -4 ^\mfLegato | }
  \tag midi   { s2.\mf | }
  s2.\> |
  s2.\p |
  s2. |
  s2.\< |
  s4. s\> |
  s2.\p |
  s2. |
  
  \barNumberCheck 9
  s4. s\< |
  s2. |
  s2.\mf |
  s2. |
  s4.\> s8 s4\! |
  s4.\< s4\> s16 s\! |
  s2.\p |
  s2. |
  
  \barNumberCheck 17
  s4. s\< |
  s4. s\> |
  s2.\! |
  s2. |
  \override Hairpin.to-barline = ##f
  s2.\f\> |
  s2. |
  s4.\! s |
  s4. s\> |
  
  \barNumberCheck 25
  s2.\! |
  s2. * 2 |
}

pedal = {
  s2. * 2 |
  s4.\sustainOn s4 s16 s\sustainOff |
  s4.\sustainOn s4 s16 s\sustainOff |
  s2.\sustainOn |
  s4. s4 s16 s\sustainOff |
  s4.\sustainOn s4 s16 s\sustainOff |
  s4.\sustainOn s4 s16 s\sustainOff |
  
  \barNumberCheck 9
  s2.\sustainOn |
  s8 s4\sustainOff s4. |
  \repeat unfold 3 { s4.\sustainOn s4 s16 s\sustainOff | }
  s4\sustainOn s16 s\sustainOff s4. |
  s4.\sustainOn s4 s16 s\sustainOff |
  s4.\sustainOn s4 s16 s\sustainOff |
  
  \barNumberCheck 17
  s4.\sustainOn s4 s16 s\sustainOff |
  s2. |
  s2.\sustainOn |
  s4. s4 s16 s\sustainOff |
  s2.\sustainOn |
  s4. s4 s16 s\sustainOff |
}

preludeElevenMusic = \score { 
  \keepWithTag #'layout
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 11"
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
  >>
  \layout {}
}

preludeElevenMidi = \book {
  \bookOutputName "prelude-op28-no11"
  \score { 
    \keepWithTag #'midi
    <<
      \new Staff = "upper" << \rightHand \dynamics \pedal >>
      \new Staff = "lower" << \leftHand \dynamics \pedal >>
    >>
    \midi {}
  }
}
