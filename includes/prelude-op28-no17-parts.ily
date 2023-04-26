%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

beamPositionsA = \tweak Beam.positions #'(2.5 . 3) \etc
beamPositionsB = \tweak Beam.positions #'(3.5 . 2.5) \etc
beamPositionsC = \tweak Beam.positions #'(2.5 . 3) \etc

forceHShiftA = \tweak NoteColumn.force-hshift -1.5 \etc
forceHShiftB = \tweak NoteColumn.force-hshift -1.5 \etc

appogShapeA = \shape #'((0 . 0) (0 . 0) (-0.5 . 0) (-0.75 . 0.25)) Slur
appogShapeB = \shape #'((0 . 0) (0 . 0) (-0.5 . 0) (-0.75 . 0.25)) Slur
appogShapeC = \shape #'((0 . 0.25) (0 . 0.5) (-0.5 . 0.5) (-0.75 . 0.5)) Slur

moveDotA = \tweak Dots.extra-offset #'(0 . 0.9) \etc

%%% Music %%%

global = {
  \time 6/8
  \key af \major
  \accidentalStyle piano
}

rightHandUpper = \relative {
  \oneVoice
  c'8^( c c c c c |
  c8 c c c c c |
  \beamPositionsA df8) <df g>^( <df c'> \beamPositionsB <df df'> <df f> 
    <df g> |
  \voiceOne bf'4. \forceHShiftA \moveDotA af)~ |
  \oneVoice af8 <af df>( <af g'!> <af bf'> <af af'> <af f'> |
  \voiceOne ef'4.-> f->)~ |
  \oneVoice f8 bf,\( <ef, bf' ef> <bf' g'> <bf f'> <bf df> |
  \voiceOne c4.-> df->\)~ |
  
  \barNumberCheck 9
  \oneVoice df8 <df, af'>^( <df g bf> df' <c, af' c> <c f af> |
  \voiceOne bf'2.)~ |
  \oneVoice bf8 <df, g bf>^( <df g c> <df g df'> <df f> <df g> |
  \voiceOne bf'4. \forceHShiftA \moveDotA af)~ |
  \oneVoice af8 <af df>( <af df g!> <af df bf'> <af df af'> <af df f> |
  \voiceOne ef'4.-> f->)~ |
  \oneVoice f8 <ef, bf'>^( <ef bf' ef> <bf' g'> <bf f'> <ef, bf' df> |
  \voiceOne c'4.-> df->)~ |
  
  \barNumberCheck 17
  df8 df,^( <df af'> c' bf8. af16 |
  af2.) |
  gs4.( gs8 fs e |
  cs'2.) |
  cs4( bs8 bs a gs |
  e'2.) |
  e4( ds8 ds cs b |
  gs'4)( gs8 gs fss ds) |
  
  \barNumberCheck 25
  fs4( fs8 fs es cs) |
  e8( ds e gs4 fs8 |
  e2.)~ |
  e8 e( ds fs e c |
  e2.->)~ |
  e8 e( ds fs e c |
  e2.->)~ |
  e4. ds4->( ds8 |
  
  \barNumberCheck 33
  ef2. |
  d2.) |
  \oneVoice <df, g>8^( q <df g c> <df g df'> <df f> <df g>
  \voiceOne bf'4. \forceHShiftB \moveDotA af)~ |
  \oneVoice <f af>8 <af df>( <af df g!> <af df bf'> <af df af'> <af df f> |
  \voiceOne ef'4.-> f->)~ |
  f8 <ef, bf'>( <ef bf' ef> <bf' g'> <bf f'> <ef, bf' df> |
  c'4.-> df->)~ |
  
  \barNumberCheck 41
  df8 <df, af'>( <df g bf> <df af' df> <c af' c> <c f af> |
  bf'2.) |
  b4.( \slurDown \appogShapeA \appoggiatura { b16[ cs] } \slurUp b8 as b |
  cs4. b) |
  b8( <fs b> <fs b cs> <fs b ds> <fs b e> <fs b fs'> |
  gs'2.)~ |
  gs8\noBeam \beamPositionsC cs,,( cs' \slurDown \appogShapeB 
    \appoggiatura { cs16[ ds] } \slurUp cs8 bs cs | 
  ds4. cs) |
  
  \barNumberCheck 49
  cs8( <es, b' cs> <es b' ds> <es b' es> <fs b cs fs> <gs b cs gs'> |
  as'2.) |
  b4.( gs |
  bf4. g |
  a4. fs~ |
  fs2. |
  g4.)(~ g8 af e |
  g8[ \slurDown \appogShapeC \appoggiatura { f16[ g] } \slurUp f8 e] f g d |
  
  \barNumberCheck 57
  ef2.)~ |
  ef8 ef( d f ef cf |
  ef2.)~ |
  ef8 ef( d f ef cf |
  ef2.)~ |
  ef2. |
  \oneVoice <ef, bf'>8 q q q q q |
  q8 q q q q q~ |
  
  \barNumberCheck 65
  <ef bf'>8^\sottoVoce q^( <ef c'> <ef df'> <df f> <df g> |
  \voiceOne bf'4. af) |
  \oneVoice r8 <af df>( <af df g> <af df bf'> <af df af'> <af df f> |
  \voiceOne ef'4. f) |
  \oneVoice r8 <ef, bf'>( <ef bf' ef> <bf' g'> <bf f'> <bf df> |
  \voiceOne c4. df) |
  \oneVoice r8 df,^( <df bf'> <c af' df> <c af' c> <c f af> |
  \voiceOne bf'2.) |
  
  \barNumberCheck 73
  \oneVoice r8 <df, g bf>^( <df g c> <df g df'> <df f> <df g> |
  \voiceOne bf'4. \forceHShiftB \moveDotA af) |
  \oneVoice r8 <af df>( <af df g!> <af df bf'> <af df af'> <af df f> |
  \voiceOne ef'4. f) |
  \oneVoice r8 <ef, bf'>( <ef bf' ef> <bf' g'> <bf f'> <bf df> |
  \voiceOne c4. df) |
  \oneVoice r8 df,^( <df af'> <df c'> <df bf'> <df af'> |
  \voiceOne c'2.)~ |
  
  \barNumberCheck 81
  c4 af8( c bf af |
  c4.~ c8 bf af |
  c4.~ c8 bf af) |
  \perden af2.(\startTextSpan |
  af2. |
  af4 bf8\rest af4 bf8\rest |
  af4 bf8\rest af4 bf8\rest)\stopTextSpan |
  \oneVoice r8 c,^( c \ritSpan \tempo 4. = 54 c\startTextSpan c c |
  
  \barNumberCheck 89
  \tempo 4. = 48 c8 c c \tempo 4. = 42 c \acciaccatura { ef8 } df 
    c\stopTextSpan |
  c2.)\fermata |
  \bar "|."
}

rightHandLower = \relative {
  \voiceTwo
  s2. * 3 |
  r8 <c' gf'> q q q q |
  s2. |
  r8 <ef bf'> q r <f df'> q |
  s2. |
  r8 <ef a> q r <df af'> q |
  
  \barNumberCheck 9
  s2. |
  r8 <bf g'> q q q q |
  s2. |
  r8 <c gf'> q q q q |
  s2. |
  r8 <ef bf'> q r <f df'> q |
  s2. |
  r8 <ef a> q r <df af'> q |
  
  \barNumberCheck 17
  s4. r8 <df g> q |
  r8 c c c c c |
  r8 <gs d'> q q q q |
  r8 <cs a'> q q q q |
  r8 <cs gs'> <bs gs'> q bs bs |
  r8 <e cs'> q q q <e c'> |
  r8 <e b'> b' b b b |
  r8 <gs css> q r <fss ds'> q |
  
  \barNumberCheck 25
  r8 <fs bs> q r <es cs'> q |
  r8 <ds as'> <e as> r <gs e'> <fs b> |
  r8 <e b'> q q q q |
  r8 <e c'> <ds c'> <fs c'> <e c'> q |
  r8 <e b'> q q q q |
  r8 <e c'> <ds c'> <fs c'> <e c'> q |
  r8 <e b'> q q q q |
  <e b'>8 \omitAccidental q q <ds b'> q q |
  
  \barNumberCheck 33
  <ef cf'>8 q q q q q |
  <d cf'>8 <d af' cf> q q q q |
  s2. |
  r8 <c gf'> q q q q |
  s2. |
  r8 <ef bf'> q r <f df'> q |
  s2. |
  r8 <ef a> q r <df af'> q |
  
  \barNumberCheck 41
  s2. |
  r8 <bf g'> q q q q |
  r8 <b fs'> q q <as fs'> <b fs'> |
  r8 <cs gs'> q <b gs'> gs' gs |
  s2. |
  r8 <gs e'> q q <gs b e> q |
  \voiceOne s4 <cs, gs'>4*1/2 q <bs gs'> <cs gs'> |
  \voiceTwo r8 <cs as'> q q q q |
  
  \barNumberCheck 49
  s2. |
  r8 <as' fs'> q <as cs fs> q q |
  r8 <a b fs'> q r <gs e'> q |
  r8 <af f'> q r <g ef'> q |
  r8 <g e'> q r <fs d'> <fs cs'> |
  <fs bs>8 <fs a bs> <fs a cs> <fs a d> q <fs a ef'> |
  r8 <g ef'> q <g cs> q q |
  r8 <af d> q q q q |
  
  \barNumberCheck 57
  r8 <ef bf'> q q q q |
  <ef cf'> q <d cf'> <f cf'> <ef cf'> q |
  r8 <ef bf'> q q q q |
  <ef cf'> q <d cf'> <f cf'> <ef cf'> q |
  r8 <ef bf'> q q q q |
  q q q q q q |
  s2. * 2 |
  
  \barNumberCheck 65
  s2. |
  c8 c c c c c |
  s2. |
  <ef bf'>8 q q <f df'> q q |
  s2. |
  <ef af>8 q q <df af'> q q |
  s2. |
  <bf g'>8 q q q q q |
  
  \barNumberCheck 73
  s2. |
  <df gf>8 q q <c gf'> q q |
  s2. |
  <ef bf'>8 q q <df af'> q q |
  s2. |
  <ef af>8 q q <df af'> q q |
  s2. |
  c8 c c c c c |
  
  \barNumberCheck 81
  df8 df df df df df |
  c8 c c df df df |
  c8 c c c c c |
  r8 c c c bf f' |
  c8 c c c bf f' |
  c4 bf8 c4 bf8 |
  c4 bf8 c4 bf8 |
  s2. |
  
  \barNumberCheck 89
  s2. * 2 |
}

rightHand = <<
  \clef treble
  \global
  \set Score.tempoHideNote = ##t 
  \tempo "Allegretto" 4. = 60
  \new Voice \rightHandUpper
  \new Voice \rightHandLower
>>

leftHand = \relative {
  \clef bass
  \global
  \mergeDifferentlyDottedOn
  \oneVoice
  <ef af ef'>8 q q q q q |
  <ef af ef'>8 q q q q q |
  ef,8\noBeam <ef' bf' ef> q q q q |
  af,8\noBeam <af' ef'> q q q q |
  df,8 <af' df f> q q q q |
  ef8\noBeam \clef treble <bf' df g> q \clef bass df,\noBeam \clef treble 
    <af' df af'> q |
  \clef bass ef8\noBeam \clef treble <bf' df g> q q q q |
  \clef bass << { f4. } \\ { f8 <c' f> q } >> bf,\noBeam <f' bf f'> q |
  
  \barNumberCheck 9
  << { ef4. } \\ { ef8 <bf' f'> <bf ef> } >> af,\noBeam <ef' af ef'> q |
  ef,8\noBeam <ef' ef'>8 q q q q |
  ef,8\noBeam <ef' bf' ef> q q q q |
  af,8\noBeam <ef' af ef'> q q q q |
  df,8\noBeam <f' af df f> q q q q |
  ef8\noBeam \clef treble <bf' df g> q \clef bass df,\noBeam \clef treble 
    <af' df af'> q |
  \clef bass ef8\noBeam \clef treble <bf' df g> q <bf df ef g> q <bf df g> |
  \clef bass f,8\noBeam <f' c' f> q bf,\noBeam <f' bf f'> q |
  
  \barNumberCheck 17
  ef8 <f bf f'> q ef,\noBeam <ef' bf' ef> q |
  af,8\noBeam <ef' af ef'> q q q q |
  e,8\noBeam <e' b' e> q q q <e b'> |
  a,8\noBeam <e' a e'>_( <es a es'> q <fs a fs'> <fss a fss'>) |
  gs,8\noBeam <gs' ds' fs> q q q q |
  cs,8\noBeam \clef treble <fss cs' fss>_( <gs cs gs'> q <a cs a'> 
    <as c as'>) |
  \clef bass b,8\noBeam \clef treble <b' fs' a> <b ds fs a> q <b cs fs a> 
    <b ds fs a> |
  \clef bass e,8\noBeam \clef treble <b' e b'> <as e' as> \clef bass 
    ds,\noBeam \clef treble <as' ds as'> q |
    
  \barNumberCheck 25
  \clef bass d,\noBeam \clef treble <a' d a'> <gs d' gs> \clef bass cs,\noBeam
    \clef treble <gs' cs gs'> q |
  \clef bass c,\noBeam \clef treble <g' c g'> <fs c' fs> \clef bass b,\noBeam
    \clef treble <b' e b'> <b ds a'> |
  \clef bass e,,8\noBeam <gs' b gs'> q q q q |
  e8\noBeam \clef treble <a c a'> q q q q |
  \clef bass e,8\noBeam \clef treble <gs' b gs'> q q q q |
  \clef bass e8\noBeam \clef treble <a c a'> q q q q |
  \clef bass e,8\noBeam \clef treble <gs' b gs'> q q q q |
  <gs b gs'>8 q q q q q |
  
  \barNumberCheck 33
  <af cf af'>8 q q q q q |
  <af cf af'>8\noBeam \clef bass <f, f'> <d d'> <cf cf'> <af af'> <f f'> |
  <ef ef'>8\noBeam <ef'' bf' ef> q q q q |
  <af,, af'>8\noBeam <ef'' af ef'> q q q q |
  <df,, df'>8\noBeam <f'' af df f> q q q q |
  <ef,, ef'>8\noBeam <g'' bf g'> q <df,, df'>\noBeam <f'' af df af'> q |
  <ef,, ef'>8\noBeam <g'' bf df g> q <g bf df ef g> q <g bf df g> |
  <f,, f'>8\noBeam <f'' c' f> q <bf,, bf'>\noBeam <f'' bf f'> q |
  
  \barNumberCheck 41
  <ef, ef'>\noBeam <f' bf f'> <ef bf' ef> af,\noBeam <ef' af ef'> q |
  ef,\noBeam <ef' ef'> q q q q |
  ds,8\noBeam <ds' a' ds> q q q q |
  e,8\noBeam <e' gs e'> q q <e gs ds'> <e gs cs> |
  <b, b'>8\noBeam \clef treble <b'' ds a'> q q <b cs a'> <b ds a'> |
  \clef bass <e,, e'>8\noBeam \clef treble <b'' e b'> q q \clef bass <ds,, ds'>
    <d d'> |
  <cs cs'>8\noBeam <es' b' es> q q q q |
  fs,8\noBeam <fs' as fs'> q q <fs as es'> <fs as ds> |
  
  \barNumberCheck 49
  <cs, cs'>8\noBeam <gs'' b cs gs'> q q <gs b cs ds> <gs b cs es> |
  fs,8\noBeam <fs' cs' fs> q <fs, fs'> <es es'> <e e'> |
  <ds ds'>8\noBeam \clef treble <b'' fs'> q \clef bass e,\noBeam \clef treble
    <b' e b'> q |
  \clef bass d,8 \clef treble <bf' f' bf> q \clef bass ef,\noBeam \clef treble
    <bf' ef bf'> q |
  \clef bass cs,8\noBeam \clef treble <a' e' a> q \clef bass d,\noBeam
    \clef treble <a' d a'> q |
  <a d a'>8\noBeam \clef bass <d,, d'>( <cs cs'> <c c'>) q( <cf cf'> |
  <bf bf'>8)\noBeam \clef treble <bf'' ef bf'> q <bf e bf'> q q |
  \clef bass bf,8\noBeam \clef treble <bf' f' bf> q q q q |
  
  \barNumberCheck 57
  \clef bass ef,,8\noBeam <g' bf g'> q q q q |
  ef8\noBeam \clef treble <af cf af'> q q q q |
  \clef bass ef,8\noBeam <g' bf g'> q q q q |
  ef8\noBeam \clef treble <af cf af'> q q q q |
  \clef bass ef,8\noBeam <g' bf g'> q q q q |
  q8 q q q q q |
  q8 q q q q q |
  q8 q q q q q |
  
  \barNumberCheck 65
  af,,8\noBeam\fz\sustainOn <af' ef'> q <af ef' bf'> <ef' bf'> q\sustainOff |
  <ef af ef'>8 q q q q q |
  af,,8\noBeam\fz\sustainOn <f'' af df f> q q q q\sustainOff |
  <g bf df g>8 q q <af df af'> q q |
  af,,8\noBeam\fz\sustainOn <g'' bf g'> q <g bf df ef g> q q\sustainOff |
  <af c gf'>8 q q <f af f'> q q |
  af,,8\noBeam\fz\sustainOn <ef'' af ef'> q q q q\sustainOff |
  <ef ef'>8 q q q q q |
  
  \barNumberCheck 73
  af,,8\noBeam\fz\sustainOn <ef'' ef'> q q q q\sustainOff |
  <ef af ef'>8 q q q q q |
  af,,8\noBeam\fz\sustainOn <f'' af df f> q q q q\sustainOff |
  <g bf df g>8 q q <af df af'> q q |
  af,,8\noBeam\fz\sustainOn <g'' bf g'> q <g bf df ef g> q q\sustainOff |
  <af c gf'>8 q q <f af f'> q q |
  af,,8\noBeam\fz\sustainOn <ff'' af ff'> q q q q\sustainOff |
  <ef af ef'>8 q q q q q |
  
  \barNumberCheck 81
  af,,8\noBeam\fz\sustainOn <ff'' af ff'> q q q q\sustainOff |
  <ef af ef'>8 q q <ff af ff'> q q |
  <ef af ef'>8 q q q q q |
  af,,8\noBeam\fz\sustainOn <ef'' af ef'> q q\sustainOff <ef af df> q |
  <ef af ef'> q q q <ef af df> q |
  <ef af ef'> q <ef g ef'> <ef af ef'> q <ef g ef'> |
  <ef af ef'> q <ef g ef'> <ef af ef'> q <ef g ef'> |
  af,,8\noBeam\fz\sustainOn <ef'' af ef'> q q q q |
  
  \barNumberCheck 89
  <ef af ef'>8 q q q <ef af> <ef af ef'> |
  << { s4. s\sustainOff } { <ef af ef'>2.\fermata } >> |
}

dynamics = {
  %\override TextScript.Y-offset = -0.5
  s2.\p\< |
  s4 s8\! s4.\> |
  s2.\!
  s2. * 5 |
  
  \barNumberCheck 9
  s2. * 2 |
  s2.\f |
  s2. * 5 |
  
  \barNumberCheck 17
  s2. * 2 |
  s2.\p |
  s8 s4\< s4 s8\! |
  s2.\cresc |
  s2. |
  s2 s8 s\! |
  s4.\f s\dim | 
  
  \barNumberCheck 25
  s2. |
  s8\! s\< s s\! s8\> s\! |
  s8 s4\< s s8\! |
  s8\! s\< s s\! s8\> s\! |
  s8 s4\< s s8\! |
  s8\! s\< s s\! s8\> s\! |
  r8 s4\< s4. |
  s2. |
  
  \barNumberCheck 33
  s2. |
  s4.\cresc s4 s8\! |
  s2.\ff |
  s2. * 5 |
  
  \barNumberCheck 41
  s2. * 2 |
  s2.\p |
  s2. |
  s8 s\< s s4 s8\! |
  s4.\> s8\! s4\< |
  s8 s4\p s4. |
  s2. |
  
  \barNumberCheck 49
  s8 s\< s s4 s8\! |
  s4.\> s8\! s4\< |
  s4.\f s8 s4\dim |
  s2. |
  s4. s4 s8\! |
  s2.\< |
  s2.\f |
  s2. |
  
  \barNumberCheck 57
  s2. |
  s8 s\< s s4\> s8\! |
  s2. |
  s8 s\< s s4\> s8\! |
  s4. s\< |
  s4. s4 s8\! |
  s2.\> |
  s4. s4 s8\! |
  
  \barNumberCheck 65
  s8 s\pp s s4. |
  s2. * 7 |
  
  \barNumberCheck 73
  s2. * 8 |
  
  \barNumberCheck 81
  s2. * 7 |
  s8 s\ppp s s4.\< |
  
  \barNumberCheck 89
  s4 s8\! s4\> s8\! |
  s2. |
}

pedal = {
  s2.\sustainOn |
  s2 s8 s\sustainOff |
  \repeat unfold 3 { s2\sustainOn s8 s\sustainOff | }
  s4\sustainOn s8\sustainOff s4\sustainOn s8\sustainOff |
  s2\sustainOn s8 s\sustainOff |
  s4\sustainOn s8\sustainOff s4\sustainOn s8\sustainOff |
  
  \barNumberCheck 9
  s4\sustainOn s8\sustainOff s4\sustainOn s8\sustainOff |
  \repeat unfold 4 { s2\sustainOn s8 s\sustainOff | }
  s4\sustainOn s8\sustainOff s4\sustainOn s8\sustainOff |
  s2\sustainOn s8 s\sustainOff |
  s4.\sustainOn s4\sustainOff\sustainOn s8\sustainOff |
  
  \barNumberCheck 17
  s4.\sustainOn s4\sustainOff\sustainOn s8\sustainOff |
  s2\sustainOn s8 s\sustainOff |
  \repeat unfold 5 { s8.\sustainOn s\sustainOff s4. | }
  s8.\sustainOn s\sustainOff s8.\sustainOn s\sustainOff |
  
  \barNumberCheck 25
  \repeat unfold 2 { s8.\sustainOn s\sustainOff s8.\sustainOn s\sustainOff | }
  \repeat unfold 4 { s2\sustainOn s8 s\sustainOff | }
  s2.\sustainOn |
  s4 s8\sustainOff s4. |
  
  \barNumberCheck 33
  \repeat unfold 5 { s2\sustainOn s8 s\sustainOff | }
  s8.\sustainOn s\sustainOff s8.\sustainOn s\sustainOff |
  s2\sustainOn s8 s\sustainOff |
  s8.\sustainOn s\sustainOff s8.\sustainOn s\sustainOff |
  
  \barNumberCheck 41
  s8.\sustainOn s\sustainOff s8.\sustainOn s\sustainOff |
  s2\sustainOn s8 s\sustainOff |
  s4.\sustainOn s\sustainOff |
  s4.\sustainOn s\sustainOff |
  s4.\sustainOn s8 s4\sustainOff |
  s4.\sustainOn s8 s4\sustainOff |
  s4.\sustainOn s\sustainOff |
  s4.\sustainOn s\sustainOff |
  
  \barNumberCheck 49
  s4.\sustainOn s8 s4\sustainOff |
  s4.\sustainOn s8 s4\sustainOff |
  s4\sustainOn s8\sustainOff s4\sustainOn s8\sustainOff |
  s4\sustainOn s8\sustainOff s4\sustainOn s8\sustainOff |
  s4\sustainOn s8\sustainOff s4.\sustainOn |
  s8 s\sustainOff s s4. |
  s4\sustainOn s8\sustainOff s4\sustainOn s8\sustainOff |
  s4.\sustainOn s4 s16 s\sustainOff |
  
  \barNumberCheck 57
  \repeat unfold 4 { s4.\sustainOn s4 s16 s\sustainOff | }
  s2.\sustainOn |
  s2. * 2 |
  s4. s4 s8\sustainOff |
  
  \barNumberCheck 65
  s2. |
  s4.\sustainOn s4 s8\sustainOff |
  s2. |
  s4\sustainOn s8\sustainOff s4\sustainOn s8\sustainOff |
  s2. |
  s4\sustainOn s8\sustainOff s4\sustainOn s8\sustainOff |
  s2. |
  s4.\sustainOn s4 s8\sustainOff |
  
  \barNumberCheck 73
  s2. |
  s4\sustainOn s8\sustainOff s4\sustainOn s8\sustainOff |
  s2. |
  s4\sustainOn s8\sustainOff s4\sustainOn s8\sustainOff |
  s2. |
  s4\sustainOn s8\sustainOff s4\sustainOn s8\sustainOff |
  s2. |
  s4.\sustainOn s4 s8\sustainOff |
  
  \barNumberCheck 81
  s2. |
  s4\sustainOn s8\sustainOff s4\sustainOn s8\sustainOff |
  s4.\sustainOn s4 s8\sustainOff |
  s4. s8 s\sustainOn s\sustainOff |
  s4.\sustainOn s8\sustainOff s\sustainOn s\sustainOff |
  s4\sustainOn s8\sustainOff s4\sustainOn s8\sustainOff |
  s4\sustainOn s8\sustainOff s4\sustainOn s8\sustainOff |
  s2. |
  
  \barNumberCheck 89
  s2. * 2 |
}

preludeSeventeenMusic = \score { 
  \keepWithTag #'layout
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 17"
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
  >>
  \layout {}
}

preludeSeventeenMidi = \book {
  \bookOutputName "prelude-op28-no17"
  \score { 
    \keepWithTag #'midi
    <<
      \new Staff = "upper" << \rightHand \dynamics \pedal >> 
      \new Staff = "lower" << \leftHand \dynamics \pedal >> 
    >>
    \midi {}
  }
}
