%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

moveArpeggioA =
  \tweak positions #'(-2 . 2) 
  \tweak extra-spacing-width #'(-2 . 0)
  \etc
moveArpeggioB = \tweak positions #'(-4 . 2) \etc
moveArpeggioC = \tweak positions #'(-4.5 . 2) \etc
moveArpeggioD = \tweak positions #'(-3 . 3) \etc
moveArpeggioE = \tweak positions #'(-3.5 . 2) \etc
moveArpeggioF = \tweak positions #'(-4 . 2.5) \etc

movePedalA = \tweak Y-offset 2 \etc
movePedalB = \tweak X-offset 0 \etc

% not needed
slurShapeA = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc

slurPositionsA = \tweak positions #'(-1 . -2) \etc

movePocoRit = 
  \tweak outside-staff-priority ##f 
  \tweak staff-padding #'()
  \tweak X-offset 2
  \tweak Y-offset 2.1
  \etc

%%% Music %%%

global = {
  \time 6/4
  \key fs \major
  \accidentalStyle piano
}

rightHandUpper = \relative {
  \voiceOne
  <cs' fs as>2.\( q |
  <fs as>2. << { b2 gs4\) } \new Voice { \voiceTwo es2. } >> |
  <cs fs as>2.\( <fs as>2 q4 |
  \omit TupletBracket
  \tuplet 5/3 { <fs as>4( <gs b> <fs as> <es gs> <fs as>) } <as cs>4 <gs b>\) 
    \oneVoice r8 <cs, gs'>\( |
  <cs fs as>2. <cs as' cs> |
  <fs as fs'>2. <gs cs es> |
  \slashedGrace { es'8\moveArpeggioA \arpeggio } <fs, gs ds'>2. 
    <es gs cs>2\) r4 |
  R1. |
  
  \barNumberCheck 9
  \voiceOne
  \acciaccatura { \slurDown as,8 } \slurUp <cs fs as>2.\( q |
  <fs as>2. << { b2~ b8. gs16\) } \new Voice { \voiceTwo es2. } >> |
  \oneVoice
  <cs fs as>2.^\( q4~ \tuplet 3/2 4 { q8[ q q] q[ q q] } |
  \voiceOne
  <fs as>4 <gs b>8 <fs as> <es gs> <fs as> <as cs>4 <gs b>\) 
    b8\rest <cs,_~ gs'>\( |
  <cs e as>2. as'2~ as8. b16 |
  <e, as cs>2. ds'2~ ds8. cs16 |
  <e, as cs>2. <ds gs b>\) |
  <cs fss as>2.\( b'2~ b8. ds,16 |
  
  \barNumberCheck 17
  <b gs'>2. <cs as'> |
  <as fs'>2\) b'4\rest <ds, b'>2.\( |
  <b gs'>2. << { as'2. } \\ { cs,2 b4 } >> |
  <as_~ fs'^~>2. q4\) b'4\rest b\rest |
  \tempo 4 = 84 fs'2.\(^\piuLento as,2 bs4 |
  bs2~ bs16 cs es ds cs2.\) |
  e2.\( gs,2 as4 |
  as2~ as16 b ds cs b2 as4 |
  
  \barNumberCheck 25
  as4 gs\)~ gs16\( as cs b as4 gs4\)~ gs16\( as cs b |
  as4 gs2.~ gs8 as cs as\) |
  fs4\( fs <ds fs> << { gs2 } \\ { \voiceThree <ds fs>4 <cs es> } >> <ds gs>4 |
  <b ds gs>4 <as cs as'> <b ds gs> <as cs as'>2.\) |
  \tempo 4 = 92 <e' as>2.\(^\tempoI as2~ as8. b16 |
  <e, as cs>2. ds'2~ ds8. cs16 |
  s2. ds~ |
  ds2. b2~ b8. ds,16 |
  
  \barNumberCheck 33
  es'1. |
  fs2.\) gs\( |
  <gs, es'>2.~ es'2~ es8. fs16 |
  fs1.\) |
  \tempo 4 = 84 b,2.\rest \tempo 4 = 78 as2\(\movePocoRit ^\pocoRit 
    \tempo 4 = 72 gss16 as cs b |
  as1.\) |
  \bar "|."
}

rightHandLower = \relative {
  \voiceTwo
  s1. |
  cs'1. |
  s2. cs2. |
  cs2. es2 s4 |
  s1. * 4 |
  
  \barNumberCheck 9
  s1. |
  cs1. |
  s1. |
  cs2. es2 s4 |
  s2. e |
  s2. <e as> |
  s1. |
  s2. <b gs'>2. |
  
  \barNumberCheck 17
  es1. |
  s1. |
  es1. |
  s1. |
  r8 fs fs fs fs fs  fs fs fs fs fs fs |
  es8 es es es es es  es es es es es es |
  r8 e e e e e  e e e e e e |
  r8 ds ds ds ds ds  ds ds ds ds ds cs |
  
  \barNumberCheck 25
  b8 b b b cs cs  ds ds ds ds cs cs |
  b8 b ds ds es ds  es ds es ds cs cs |
  as8 as ds ds bs bs  b b b b b b |
  s1. |
  s2. \omitAccidental e |
  s2. \omitAccidental <e as fs'> |
  <e cs' fs>2. <ds b'> |
  <cs fss b>2. <b gs'> |
  
  \barNumberCheck 33
  <b es gs>2.\moveArpeggioB \arpeggio q2 <cs as'>4 |
  <as fs'>2.\moveArpeggioC \arpeggio <ds gs b>\moveArpeggioD \arpeggio |
  <b es>1.*1/2\moveArpeggioE \arpeggio as'2. |
  <as, fs'>1.\moveArpeggioF \arpeggio |
  as8\rest as as as ds as  as cs b as as as |
  as1. |
}

rightHand = <<
  \clef treble
  \global
  \set Score.tempoHideNote = ##t 
  \tempo "Lento" 4 = 92
  \new Voice \rightHandUpper
  \new Voice \rightHandLower
>>

leftHand = \relative {
  \clef bass
  \global
  \voiceFour 
  \slurUp
  fs,8( es' gs fs as cs,  fs, es' gs fs as cs, |
  fs,8 es' gs fs as cs,  cs, fss' as gs b cs,) |
  fs,8( es' gs fs as cs,  fs, es' gs fs as cs, |
  fs,8 es' gs fs as cs,  cs, fss' as gs b cs,) |
  fs,8( es' gs fs as cs,  fs, es' gs fs as cs, |
  ds,8 gss' bs as ds fs,  gs, fss' as gs cs es, |
  gs,8 fss' as gs bs ds,  cs fss as gs cs es, |
  gs8 fs b ds, fs es  as cs, as' b, as' gs) |
  
  \barNumberCheck 9
  fs,8 es' gs fs as cs,  fs, es' gs fs as cs, |
  fs,8 es' gs fs as cs,  cs, fss' as gs b cs, |
  fs,8 es' gs fs as cs,  fs, es' gs fs as cs, |
  fs,8 es' gs fs as cs,  cs, fss' as gs b cs, |
  fs,8 es' gs fs as cs,  fs, es' gs fs as cs, |
  fs,8 es' gs fs as cs,  fs, es' gs fs as cs, |
  b8 fs' gs fss as cs,  b fss' as gs b ds, |
  ds,8 css' e ds fss as,  gs css e ds gs gs, |
  
  \barNumberCheck 17
  cs,8 bs' ds cs es gs,  cs, bs' ds cs es gs, |
  fs8 bs ds cs fs fs,  b, es' gs fs b! b, |
  cs,8 bs' ds cs es gs,  cs, bs' ds cs es gs, |
  fs8 bs ds cs fs cs,  fs bs ds cs fs es,( |
  ds8) <ds' as'> q\< q <ds ds'>\> <ds as'>\!  q <ds cs'>\> <ds bs'> <ds as'> 
    <gs, as'>\! < gs gs'> |
  cs,8 <gs' gs'>\< <cs gs'> <ds gs>\> <cs gs'>\! <gs gs'>  <cs gs'> <ds gs>
    <cs gs'> <fs gs> <es gs> <gs, gs'> |
  cs,8 <cs' gs'> q\< q <cs cs'>\> <cs gs'>\!  q <cs b'>\> <cs as'> <cs gs'>
    <fs, gs'>\! <fs fs'> |
  b, <fs' fs'>\< <b fs'> <cs fs>\> <b fs'>\! <fs fs'>  <b fs'> <cs fs> <b fs'>
    <fs fs'> <b fs'> <cs fs> |
    
  \barNumberCheck 25
  <ds fs>8 q q q <cs fs> q  <b fs'> q q q <cs fs> q |
  <ds fs>8 q <b fs'> q <b gs'> <b fs'>  <b gs'> <b fs'> <b gs'> <b fs'>
    <as fs'> <cs fs> |
  <ds fs>8 q <ds as'> q <gs, ds' gs> q  <cs gs'> q q q q q |
  <cs gs'>8 <fs, cs'> q q q <fs es'>  <fs fs'> es\slurPositionsA ( gs fs as
    cs, |
  fs,8) es'' gs fs as cs,  fs, \omitAccidental es' gs fs as cs, |
  fs,8 es' gs fs as cs,  fs, \omitAccidental es' gs fs as cs, |
  b8 es gs fs as cs,  b es gs fs b b, |
  ds,8 css' e ds fss as,  gs css e ds gs gs, |
  
  \barNumberCheck 33
  cs,8 bs' ds cs es gs,  cs, bs' ds cs es gs, |
  fs8 bs ds cs fs fs,  b, css' es ds b' gs, |
  cs,8 bs' ds cs es gs,  cs, bs' ds cs gs' cs,, |
  \oneVoice
  fs,8 bs' ds cs fs cs,  fs bs ds cs fs cs, |
  fs,8 <fs' ds'> q q q q  q q q <fs cs'> q q |
  <fs cs'>1. |
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  s1.^\pLegato |
  s1. * 3 |
  \override Hairpin.to-barline = ##f
  s1.\< |
  s2.\! s\> |
  s2. s\! |
  s1. |
  
  \barNumberCheck 9
  s1.^\pSempreLegato |
  s1. |
  s2. s\< |
  s2. s2\> s8 s\! |
  s2. s\< |
  s2 s8 s\! s2.\> |
  s2. s4 s2\! |
  s2.\> s2 s8 s\! |
  
  \barNumberCheck 17
  s1.\p |
  \override Hairpin.to-barline = ##t
  s2. s\> |
  s1.\!^\piuP |
  s1.\tweak X-offset 0 \pp |
  s1.^\pSostenuto |
  s1. * 3 |
  
  \barNumberCheck 25
  s1. |
  s4 s4.\< s8\> s8 s\! s8 s4.\< |
  s2 s8 s\! s2.\> |
  s4 s2\! s2. |
  s2.\p s2.\< |
  s2. s\! |
  s8 s\> s2 s2. |
  s4. s\! s2. |
  
  \barNumberCheck 33
  s1. * 4 |
  s8 s\< s4. s8\! s2\> s8 s\! |
  s1. |
}

pedal = {
  s1. |
  s2. s4.\sustainOn s\sustainOff |
  s1. |
  s2. s4.\sustainOn s\sustainOff |
  s1. * 4 |
  
  \barNumberCheck 9
  s1. |
  s2. s4.\sustainOn s\sustainOff |
  s1. |
  s2. s4.\sustainOn s\sustainOff |
  s1. * 4 |
  
  \barNumberCheck 17
  s1. | 
  s2. s4.\sustainOn s\sustainOff |
  s1. * 2 |
  s2.\sustainOn s\sustainOff |
  s2\sustainOn s4\sustainOff s2. |
  s2.\sustainOn s\sustainOff |
  s2\sustainOn s4\sustainOff s2. |
  
  \barNumberCheck 25
  s1. * 2 |
  s2. s2 s4\movePedalA\sustainOn |
  s8 s\movePedalA\sustainOff s\sustainOn s\movePedalB\sustainOff 
    s\movePedalA\sustainOn s\movePedalB\movePedalA\sustainOff s2. |
  s2.\sustainOn s\sustainOff |
  s1. * 2 |
  s4.\sustainOn s\sustainOff s2. |
  
  \barNumberCheck 33
  s2.\sustainOn s4. s4.\sustainOff |
  s2\sustainOn s8 s\sustainOff s2\sustainOn s8 s\sustainOff |
  s2.\sustainOn s2 s4\sustainOff |
  s2.\sustainOn s2 s8 s\sustainOff |
  s2.\sustainOn s4 s2\sustainOff |
  s1.\sustainOn |
}

forceBreaks = {
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
  \grace { s8 } \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 3 { s1.\noBreak } s1.\pageBreak
  
}

preludeThirteenMusic = \score { 
  \keepWithTag #'layout
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 13"
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
    \new Devnull \forceBreaks
  >>
  \layout {}
}

preludeThirteenMidi = \book {
  \bookOutputName "prelude-op28-no13"
  \score { 
    \keepWithTag #'midi
    <<
      \new Staff = "upper" << \rightHand \dynamics >> % \pedal
      \new Staff = "lower" << \leftHand \dynamics >> % \pedal
    >>
    \midi {}
  }
}
