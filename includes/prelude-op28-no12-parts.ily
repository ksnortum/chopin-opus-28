%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Music %%%

global = {
  \time 3/4
  \key gs \minor
  \accidentalStyle piano
  
  % Divide eight notes by twos
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1
}

rightHandUpper = \relative {
  \voiceOne
  ds'8(\( e) e( es) es( fs) |
  fs8( fss) fss( gs) gs( gss) |
  gss8( as) as( b) b( bs) |
  bs( cs) cs( css) css( ds)\) |
  ds8\( e e ds ds cs |
  cs8 b b cs cs ds |
  ds8 cs cs b b as |
  r8 b[ b as] as ds,\) |
  
  \barNumberCheck 9
  ds8\( e e es es fs |
  fs8 fss fss gs gs gss |
  gss8 as as b b bs |
  bs cs cs css\) r css\( |
  ds8 e e ds ds fs |
  fs8 cs cs ds ds e |
  e8 ds ds gs gs fs |
  fs cs cs ds ds e\) |
  
  \barNumberCheck 17
  e8\( ds ds b b g |
  g8 fs fs b b g |
  fs8 b b g fs b |
  b8 g fs b b g\) |
  b2.~ |
  b2. |
  gs4 gs gs |
  a2. |
  
  \barNumberCheck 25
  a2.->~ |
  a2. |
  fs4 fs fs |
  g2.-> |
  g8(\( a) a( b) b( c) |
  c8( d) d( e) e( ds)\) |
  g,8(\( a) a( b) b( c) |
  c8( d) d( e) e( <ds fs>) |
  
  \barNumberCheck 33
  \stemDown <g, e' g>4-.\) \stemUp <e' g>8( <ds fs>) q( <e g>) |
  <e g>8( <ds fs>) q( <e g>) <fss, e' fss>( <gs es' gs>) |
  s2. |
  s2 fs'4 |
  s4 fs8( <es gs>) q( <ds fs>) |
  s4 <es gs>8( <ds fs>) q( <css es>) |
  s4 <as fs'>8( <gs es'>) q( <fss ds'>) |
  <fss ds'>4-. as^\pocoRit <fss b> |
  
  \barNumberCheck 41
  ds8\(^\aTempo e e es es fs |
  fs8 fss fss gs gs gss |
  gss8 as as b b bs |
  bs cs cs css css ds\) |
  ds8\( e e ds ds cs |
  cs8 b b cs cs ds |
  ds8 cs cs b b as |
  r8 b[ b as] as ds,\) |
  
  \barNumberCheck 49
  ds8\( e e es es fs |
  fs8 fss fss gs gs gss |
  a8 as as b b bs |
  bs cs cs css css ds\) |
  ds( cs cs b b as) |
  cs( b b as as gs) 
  ds'( cs cs b b as) |
  cs( b b as as gs) |
  
  \barNumberCheck 57
  b8\( as as b b as |
  as8 b b as as b |
  b8 as as b b as |
  as8 b b as as b\) |
  <gs_~ as^~>2. |
  <gs_~ as^~>2. |
  <gs as~>2. |
  as2( b4 |
  
  \barNumberCheck 65
  <b, gs'>-.) gs'8( b b as |
  as8 gs) gs( b b as |
  as8 gs) fs( ds' ds cs |
  cs8 b ds, b' b as |
  <b, gs'>4-.) gs'8( b b as |
  as8 gs) gs( b b as |
  as8 gs) e( cs' cs b |
  b8 a ds, gs gs fss |
  
  \barNumberCheck 73
  gs4-.) b\rest b\rest | 
  << { ds,2.->~( | } { s2 s4^\dim | } >>
  ds2 e4 |
  ds2.->~ |
  ds4 fs e |
  ds2.->~ |
  ds4 gs fs |
  << { e4 ds2) | } { s4 s2\! | } >>
  s2. |
  \bar "|."
}

rightHandLower = \relative {
  \voiceTwo
  b4 b <b ds> |
  <b ds>4 q q |
  ds4 ds <ds gs> |
  <ds gs>4 q q |
  <ds as'>4 as' <ds, as'> |
  <ds gs>4 q q |
  <e gs>4 q <cs e> |
  cs4 cs cs |
  
  \barNumberCheck 9
  b4 b <b ds> |
  <b ds>4 q q |
  <b e>4 q q |
  f'4 f <es b'> |
  <fs b>4 q q |
  <fs as>4 q q |
  <fs b>4 q fs |
  <fs as>4 <e as> q |
  
  \barNumberCheck 17
  <ds b'>4 ds e |
  ds4 ds e |
  ds4 e ds |
  e4 d e |
  <e g>8( <d fs> \acciaccatura { \slurUp g8 } \slurDown <d fs>8 <cs e> 
    <d fs>4) |
  <e g>8( <d fs> \acciaccatura { \slurUp g8 } \slurDown <d fs>8 <cs e> 
    <d fs>4) |
  <d b'>8( <e c'>) q( <d b'>) q( <e c'>) |
  <d f>8( <c e> \acciaccatura { \slurUp f8 } \slurDown <c e>8 <b d> <c e>4) |
  
  \barNumberCheck 25
  \repeat unfold 2 {
    <d f>8( <c e> \acciaccatura { \slurUp f8 } \slurDown <c e>8 <b d> <c e>4) |
  }
  <c a'>8( <d b'>) q( <c a'>) q( <d b'>) |
  <c e> <b d> \acciaccatura { \slurUp e8 } \slurDown <b d> <a c> <b d>4 |
  e4 e e |
  e4 <e a> << { \voiceFour a4 } \\ { \voiceTwo e8( ds) } >>
  e4 e e |
  e4 <e a> a |
  
  \barNumberCheck 33
  s4 a g |
  a4 g s |
  \slurUp
  <gs es' gs>8( <a fs' a>) q( <gs es' gs>) q( <a fs' a>) |
  <a fs' a>8( <gs es' gs>) q( <a fs' a>) <gss gss'>( <as as'>) |
  <as fs' as>4 <as as'>^> q^> |
  <as es' gs as>4^> <as as'>^> <as as'>^> |
  <as ds fs as>4-. s2 |
  \slurDown
  s4 fss8( e) e( ds) |
  
  \barNumberCheck 41
  b4 b <b ds> |
  <b ds>4 q q |
  ds4 ds <ds gs> |
  <ds gs>4 q q |
  <ds as'>4 as' <ds, as'> |
  <ds gs>4 q q |
  <e gs>4 q <cs e> |
  cs4 cs cs |
  
  \barNumberCheck 49
  b4 b <b ds> |
  <b ds>4 q q |
  <b e>4 q e |
  ds4 <ds gs> q |
  <e gs>8 s s2 |
  <ds gs>8 s s2 |
  <e gs>8 s s2 |
  <ds gs>8 s s2 |
  
  \barNumberCheck 57
  <cs gs'>8 s s2 |
  s2. * 6 |
  <cs fss>2. |
  
  \barNumberCheck 65
  s4 <cs e> <cs fss> |
  b4 <cs e> <cs fss> |
  b4 ds <e as> |
  <ds gs> ds <cs fss> |
  s4 <cs e> <cs fss> |
  b4 <cs e> <cs fss> |
  b4 cs <d gs> |
  <cs e> b <as ds~> |
  
  \barNumberCheck 73
  <b ds>4 s2 |
  \voiceThree
  \staffDown
  r4 <gs b>8( <fss as> q <as cs> |
  <gs b>4) r r |
  r4 <gs b>8( <fss as> q <as cs> |
  <gs b>4) r r |
  r4 <gs b>8( <fss as> q <as cs> |
  <gs b>4) r r |
  r4 r ds-^ |
  gs4-^ r r |
}

rightHand = <<
  \clef treble
  \global
  \set Score.tempoHideNote = ##t 
  \tempo "Presto" 4 = 200
  \new Voice \rightHandUpper
  \new Voice \rightHandLower
>>

leftHand = \relative {
  \clef bass
  \global
  <gs, ds' gs>4-> <gs, gs'>-. <ds' ds'>-. |
  <gs ds' gs>4-> <gs, gs'>-. <ds' ds'>-. |
  <ds' gs b>4-> <gs,, gs'>-. <ds' ds'>-. |
  <ds' gs b>4-> <gs,, gs'>-. <ds' ds'>-. |
  <ds' as'>4-. <fss, ds'>-. <ds' as'>-. |
  <gs, ds'>4-. <ds' b'>-. <gs, ds'>-. |
  <cs gs'>-. <cs, cs'>-. <cs' gs'>-. |
  <ds fss>4-. <ds, ds'>-. <ds' fss>-. |
  
  \barNumberCheck 9
  <gs, ds' gs>4-> <gs, gs'>-. <ds' ds'>-. |
  <gs ds' gs>4-> <gs, gs'>-. <ds' ds'>-. |
  <g e' g>4-> <g, g'>-. <e' e'>-. |
  <d' g b>4-> <g,, g'>-. <g' g'>-. |
  <fs fs'>4-. <fs' ds'>-. <fs, fs'>-. |
  <fs' e'>4-. <fs, fs'>-. <fs' e'>-. |
  <fs, fs'>4-. <fs' ds'>-. <fs, fs'>-. |
  <fs' e'>4-. <fs, fs'>-. <fs' cs'>-. |
  
  \barNumberCheck 17
  <b, fs'>-. <b fs' b>-. <b g' b>-. |
  <b fs' b>4 q <b g'> |
  <b fs' b>4 <e g b> <b fs' b> |
  <e g b>4 <b fs' b> <e g b> |
  <b fs' b>4-> <b, b'>-. <b'_~ fs'> |
  <b fs' b>4-> <b, b'>-. <b' fs'>-. |
  <e b'>4-. <e, e'>-. <e' b'>-. |
  <a, e' a>4-> <a, a'>-. <a'~ e'> |
  
  \barNumberCheck 25
  <a e' a>4 <a, a'>-. <a'_~ e'> |
  <a e' a>4 <a, a'>-. <a' e'> |
  <d a'>4-. <d, d'>-. <d' a'>-. |
  <g, d' g>4-> <g, g'>-. <g' g'>-. |
  <c g'>4 <c g' c> q |
  <c g' c>4 <c fs c'> <b fs' b> |
  <e b'>4 <c g' c>4 q |
  <c g' c>4 <c fs~ c'> <b fs' b> |
  
  \barNumberCheck 33
  <e b'>4 <b b'> <e b'> |
  <b b'>4 <e b'> <b b'> |
  <b, b'>4 <es' b' css> <fs b ds> |
  <es b' css>4 <fs b ds> <b,, b'> |
  <as as'>4 <fs'' as ds> <as ds fs> |
  <as, as'>4 <es' css'> <as es' gs> |
  <ds,, ds'>4 
    << 
      { \voiceThree as''( css | \voiceFour \hideNotes ds4) } 
      \\ 
      { \voiceFour ds,2~ | <ds ds'>4  } 
    >>
    <ds, ds'>4 <ds' cs'> |
    
  \barNumberCheck 41
  <gs, ds' gs>4-> <gs, gs'>-. <ds' ds'>-. |
  <gs ds' gs>4-> <gs, gs'>-. <ds' ds'>-. |
  <ds' gs b>4-> <gs,, gs'>-. <ds' ds'>-. |
  <ds' gs b>4-> <gs,, gs'>-. <ds' ds'>-. |
  <ds' as'>4-. <fss, ds'>-. <ds' as'>-. |
  <gs, ds'>4-. <ds' b'>-. <gs, ds'>-. |
  <cs gs'>-. <cs, cs'>-. <cs' gs'>-. |
  <ds fss>4-. <ds, ds'>-. <ds' fss>-. |
  
  \barNumberCheck 49
  <gs, ds' gs>-> <gs, gs'>-. <ds' ds'>-. |
  <gs ds' gs>4-> <fs, fs'>-. <fs' ds'>-. |
  <e' gs>4-> <e,, e'>-. <e'' gs>-. |
  <ds gs b!>4-> <ds,, ds'>-. <ds'' gs b>-. |
  <cs gs' b>8-> r r4 r |
  <ds gs b>8-> r r4 r |
  <cs gs' b>8-> r r4 r |
  <ds gs b>8-> r r4 r |
  
  \barNumberCheck 57
  <e gs>8-. r r4 r |
  R2. * 3 |
  \voiceFour
  \slurUp
  e'8(^\(\> ds) ds( cs) cs( b) |
  b8( as) as( gs) gs( fs) |
  fs8( e) e( ds) ds( cs)\)\! |
  
  % \barNumberCheck 64
  <<
    { \voiceThree ds2.~ | <gs, ds'>4-. }
    \\
    { \voiceFour r4 r ds( | \hideNotes gs4) }
  >> 
    \oneVoice
    <cs, cs'>4-. <ds ds'>-. |
  <gs gs'>4-. <cs, cs'>-. <ds ds'>-. |
  <e e'>4-. <b b'>-. <cs cs'>-. |
  <ds ds'>4-. ds'-. <ds, ds'>-. |
  <gs ds'>4-. <cs, cs'>4-. <ds ds'>-. |
  <gs gs'>4-. <cs, cs'>-. <ds ds'>-. |
  <e e'>4-. <a, a'>-. <b b'>-. |
  <cs cs'>4-. <ds ds'>-. <ds, ds'>-.
    
  \barNumberCheck 73
  <gs gs'>-. r r |
  \voiceFour
  <ds' ds'~>2.( |
  <gs ds'>4) r r |
  <ds ds'~>2.( |
  <gs ds'>4) r r |
  <ds ds'~>2.( |
  <gs ds'>4) r r |
  r4 r <ds, ds'>-^ |
  <gs gs'>4-^ r r |
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  s2.\f |
  s2 s4\cresc |
  s2. * 3 |
  s2 s8. s16\endcresc |
  s2.\> |
  s2. |
  
  \barNumberCheck 9
  s2.\! |
  s2. |
  s4 s2\cresc |
  s2 s8. s16\endcresc |
  s2.\f |
  s2. |
  s2 s4\> |
  s8 s\! s2 |
  
  \barNumberCheck 17
  s2. * 4 |
  s2.\ff |
  s2. * 3 |
  
  \barNumberCheck 25
  s2. * 4 |
  s2.\p\< |
  s4. s\! |
  s2.\< |
  s2 s4\! |
  
  \barNumberCheck 33
  s4 s2\cresc |
  s2. * 2 |
  s2 s8. s16\endcresc
  s2.\f |
  s2. |
  s4 s2\> |
  s2. |
  
  \barNumberCheck 41
  s2.\f |
  s2. * 5 |
  s2.\> |
  s2. |
  
  \barNumberCheck 49
  s2\! s4\cresc |
  s2. * 3 |
  s2.\f |
  s2. * 3 |
  
  \barNumberCheck 57
  s4 s2\< |
  s2. |
  s2.\> |
  s2. |
  s2.\! |
  s2. * 3 |
  
  \barNumberCheck 65
  s2. * 6 |
  s4 s2^\pocoRit |
  s2. |
  
  \barNumberCheck 73
  s2. * 7 |
  s2 s4\ff |
}

pedal = {
  \repeat unfold 4 { s4.\sustainOn s\sustainOff | }
  s2.\sustainOn |
  s2\sustainOff\sustainOn s8. s16\sustainOff |
  s2\sustainOn s8. s16\sustainOff |
  s2.\sustainOn |
  
  \barNumberCheck 9
  s4.\sustainOff\sustainOn s\sustainOff |
  \repeat unfold 3 { s4.\sustainOn s\sustainOff | }
  s2\sustainOn s8. s16\sustainOff |
  s2.\sustainOn |
  s2.\sustainOff\sustainOn |
  s2.\sustainOff\sustainOn |
  
  \barNumberCheck 17
  s4.\sustainOff\sustainOn s\sustainOff |
  s2. * 3 |
  s4.\sustainOn s\sustainOff |
  s4.\sustainOn s\sustainOff |
  s2\sustainOn s8. s16\sustainOff |
  s2\sustainOn s8. s16\sustainOff |
  
  \barNumberCheck 25
  \repeat unfold 4 { s2\sustainOn s8. s16\sustainOff | }
  s2. * 4 |
  
  \barNumberCheck 33
  s2. * 2 |
  s4.\sustainOn s\sustainOff |
  s2. |
  s2\sustainOn s8. s16\sustainOff |
  s2\sustainOn s8. s16\sustainOff |
  s4.\sustainOn s\sustainOff |
  s4.\sustainOn s8\sustainOff s\sustainOn s\sustainOff |
  
  \barNumberCheck 41
  \repeat unfold 4 { s4.\sustainOn s\sustainOff | }
  s2.\sustainOn |
  s2.\sustainOff\sustainOn |
  s2\sustainOff\sustainOn s8. s16\sustainOff |
  s2.\sustainOn |
  
  \barNumberCheck 49
  s4.\sustainOff\sustainOn s\sustainOff |
  \repeat unfold 3 { s2\sustainOn s8. s16\sustainOff | }
}

forceBreaks = {
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\pageBreak
  
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\pageBreak
  
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
}

preludeTwelveMusic = \score { 
  \keepWithTag #'layout
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 12"
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
    \new Devnull \forceBreaks
  >>
  \layout {}
}

preludeTwelveMidi = \book {
  \bookOutputName "prelude-op28-no12"
  \score { 
    \keepWithTag #'midi
    <<
      \new Staff = "upper" << \rightHand \dynamics >> 
      \new Staff = "lower" << \leftHand \dynamics >> 
    >>
    \midi {}
  }
}
