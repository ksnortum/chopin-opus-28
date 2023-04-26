%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

moveNoteA = \tweak NoteColumn.force-hshift 0.5 \etc
moveNoteB = \tweak NoteColumn.force-hshift 0.25 \etc
moveNoteC = \tweak NoteColumn.force-hshift 2 \etc

beamPositionsA = \tweak positions #'(-10.5 . -10.5) \etc
beamPositionsB = \tweak positions #'(-13 . -13) \etc

tieShapeA = \shape #'((0 . 0.5) (0 . 1) (0 . 1) (0 . 0.5)) \etc

%%% Music %%%

global = {
  \time 4/4
  \key df \major
  \accidentalStyle piano
}

rightHandUpper = \relative {
  \oneVoice
  f''8.\( df16 af2 bf4 |
  c2. df4 |
  \voiceOne
  ef8. \moveNoteA f16 gf2 f4 |
  \omit TupletBracket
  f4. ef8 df4 \slashedGrace { ef8 } \tuplet 7/2 { ef8_( f ef d ef f gf)\) } |
  \oneVoice
  f8.\( df16 af2 bf4 |
  c2. df4 |
  \voiceOne
  ef8. \moveNoteA f16 gf2 f4 |
  f4. ef8 df4\) \oneVoice c8( df |
  
  \barNumberCheck 9
  ef4 ef2 f4 |
  gf8 f ef df f2 |
  ef8 cf bf af bf4 \appoggiatura { cf16[ bf af] } bf8. cf16 |
  af4) ef'\(  df ff |
  ef4 ef2 f4 |
  gf8 f ef df f2~ |
  f8 df c bf c4 \appoggiatura { df16[ c bf] } c8 df |
  bf4\) f'\( ef gf |
  
  \barNumberCheck 17
  f8 df c bf c4 \appoggiatura { df16[ c bf] } c8. df16 |
  bf4\) ef\( f ef |
  f2. ef4 |
  f8. df16 af2 bf4 |
  c2. df4 |
  \voiceOne
  ef8. \moveNoteA f16 gf2 f4 |
  f4. ef8 df4 \tuplet 7/2 { d8_( ef e f af g gf)\) } |
  \oneVoice
  f8.\( df16 af2 bf4 |
  
  \barNumberCheck 25
  c2. df4 |
  \voiceOne
  ef8. \moveNoteA f16 gf2 c,4 |
  ef2\) b2\rest |
  \break
  \bar "||"
  \key cs \minor
  gs,8\( gs gs gs  gs gs gs gs |
  \repeat unfold 4 { gs8 gs gs gs  gs gs gs gs | }
  
  \barNumberCheck 33
  \repeat unfold 2 { gs8 gs gs gs  gs gs gs gs | }
  gs8 <gs gs'> q q  q q q q\)|
  <gs gs'>\( q q q  q q q q |
  \repeat unfold 2 { <gs gs'> q q q  q q q q | }
  <gs gs'> q q q  q q q q\) |
  <b b'>8->\( q q q  q-> q q q |
  
  \barNumberCheck 41
  \repeat unfold 2 { <b b'>8-> q q q  q-> q q q | }
  <b ds gs b>8-> gs gs gs  gs gs gs gs\)
  gs8\( gs gs gs  gs gs gs gs |
  \repeat unfold 4 { gs8 gs gs gs  gs gs gs gs | }
  
  \barNumberCheck 49
  \repeat unfold 2 { gs8 gs gs gs  gs gs gs gs | }
  gs8 <gs gs'> q q  q q q q\)
  <gs gs'>8\( q q q  q q q q |
  \repeat unfold 2 { <gs gs'> q q q  q q q q | }
  <gs gs'> q q q  q q q q\) |
  <b b'>8->\( q q q  q-> q q q |
  
  \barNumberCheck 57
  \repeat unfold 2 { <b b'>8-> q q q  q-> q q q | }
  <b ds gs b>8-> gs' gs gs  gs gs gs gs\)
  <bs, bs'>2\( <cs cs'> | 
  <ds cs' ds>2. <ds bs' ds>4 |
  <e ds' e>4 <e cs' e> <ds cs' ds> <ds bs' ds> |
  <cs cs'>1\) |
  <bs ds gs>2( <cs e gs>4 <as cs gs'> |
  
  \barNumberCheck 65
  <bs ds gs>4) <cs e gs>\( <as cs gs'> <cs e gs> |
  <cs e gs>4 <bs ds gs> <ds fs gs> <cs e gs> |
  <bs ds gs>1\) |
  <bs ds bs'>2\( <cs cs'> |
  <ds cs' ds>2. <ds bs' ds>4 |
  <e ds' e>4 <e cs' e> <ds cs' ds> <ds bs' ds> |
  <gs b cs>2 <gs a cs>4 <fs a cs> |
  <ds fs gs>2 <cs fs gs>4 <cs e as> |
  
  \barNumberCheck 73
  <cs e as>2 <bs ds gs>4\) <cs e as>( |
  <cs e as>2 <bs ds gs>4) <cs e as>4( |
  <cs e as>4 <bs ds gs>4) \oneVoice r2 |
  \bar "||"
  \key df \major 
  f''8.\( df16 af2 bf4 |
  c2. df4 |
  \voiceOne
  ef8. \moveNoteA f16 gf2 f4 |
  f4. ef8 df8. d16 \tuplet 10/4 { ef16_( f ef d ef e f af g gf) } |
  \oneVoice
  f8. df16 af2 bf4 |
  
  \barNumberCheck 81
  c4\) r r bf'~\( |
  bf4 af gf c, |
  f4 ef df bf\) |
  <ef, gf>1^( |
  f1*1/2) s8 \once \hideNotes df^( s8. s16 |
  <ef gf>1 |
  <c ef gf>1 |
  <df f>1 |
  
  \barNumberCheck 89
  <af df f>1)\fermata |
  \bar "|."
}

rightHandLower = \relative {
  \voiceTwo
  s1 * 8 |
  
  \barNumberCheck 9
  s1 * 8 |
  
  \barNumberCheck 17
  s1 * 8 |
  
  \barNumberCheck 25
  s1 * 8 |
  
  \barNumberCheck 33
  s1 * 3 |
  s2 cs'4 bs |
  s2 ds4 cs-\tieShapeA ~ |
  cs4 ds e ds |
  ds1 |
  <e gs>2 <ds gs> |
  
  \barNumberCheck 41
  <e gs>2 <ds gs> |
  <ds gs>2 <ds fss> |
  s1 * 6 |
  
  \barNumberCheck 49
  s1 * 3
  s2 cs4 bs |
  s2 ds4 cs-\tieShapeA ~ |
  cs4 ds e ds |
  ds1 |
  <e gs>2 <ds gs> |
  
  \barNumberCheck 57
  <e gs>2 <ds gs> |
  <ds gs>2 <ds fss> |
  s1 |
  \repeat unfold 3 { gs8 gs gs gs  gs gs gs gs | }
  \moveNoteC gs8[ gs] fs[ fs] gs[ gs] a[ a] |
  gs,8 gs gs gs  gs gs gs gs |
  
  \barNumberCheck 65
  \repeat unfold 3 { gs8 gs gs gs  gs gs gs gs | }
  \repeat unfold 3 { gs'8 gs gs gs  gs gs gs gs | }
  cs,8 cs cs cs  cs cs cs cs |
  gs8 gs gs gs  gs gs gs gs |
  
  \barNumberCheck 73
  \repeat unfold 2 { gs8 gs gs gs  gs gs gs gs | }
  gs8 gs gs gs s2 |
  s1 * 5 |
  
  \barNumberCheck 81
  s1 * 3
  bf2( c |
  df2)~ df8[ df ef8. df16] |
  df4 c bf' c, |
  s1 * 2 |
  
  \barNumberCheck 89
  s1 |
}

rightHand = <<
  \clef treble
  \global
  \set Score.tempoHideNote = ##t 
  \tempo "Sostenuto" 4 = 60
  \new Voice \rightHandUpper
  \new Voice \rightHandLower
>>

leftHandUpper = \relative {
  \voiceFour
  s4 <df' f>2 s4 |
  <ef gf>2. s4 |
  <<
    { \staffUp c2.*1/6 s8 bf'2 s4 | }
    \new Voice { \voiceThree s8 \staffDown af,4 s8 s af4 s8 | }
  >>
  \staffUp c2 s2 |
  \staffDown s4 <df f>2 s4 |
  <ef gf>2. s4 |
  <<
    { \staffUp c2.*1/6 s8 bf'2 s4 | }
    \new Voice { \voiceThree s8 \staffDown af,4 s8 s af4 s8 | }
  >>
  \staffUp c2 s2 |
  
  \barNumberCheck 9
  s1 * 4 |
  s4 \staffDown <cf ef>2 s4 |
  s1 * 3 |
  
  \barNumberCheck 17
  s1 * 2 |
  <df f>2 s2 |
  s4 <df f>2 s4 |
  <ef gf>2. s4 |
  <<
    { \staffUp c2.*1/6 s8 bf'2 s4 | }
    \new Voice { \voiceThree s8 \staffDown af,4 s8 s af4 s8 | }
  >>
  s1 |
  \staffDown
  s4 <df f>2 s4 |
  
  \barNumberCheck 25
  <ef gf>2. s4 |
  <<
    { \staffUp c2.*1/6 s8 bf'2 s4 | }
    \new Voice { \voiceThree s8 \staffDown af,4 s8 s af4 s8 | }
  >>
  \staffUp
  gf'2 s2 |
  \oneVoice
  \key cs \minor
  \staffDown
  <cs,,, gs'>4\(\< <ds gs> <e cs'> <ds bs'> |
  <ds gs>4 <e gs> <fs ds'> <e cs'> |
  <e cs'>4 <gs ds'> <cs e> <gs ds'> |
  <gs ds'>1~\> |
  <gs ds'>4 <cs e> <gs ds'> <e cs'> |
  
  \barNumberCheck 33
  <gs ds'>4 <e cs'> <ds bs'> <cs cs'>\! |
  <ds bs'>\< <e cs'> <ds ds'> <cs e'>\! |
  <gs' ds'>1\) |
  <cs, gs'>4\( <ds gs> <e cs'> <ds bs'> |
  <ds gs>4 <e gs> <fs ds'> <e cs'> |
  <e cs'>4 <gs ds'> <cs e> <gs ds'> |
  \acciaccatura { gs,8 } <gs' ds'>1\) |
  <e, e'>2\( <b'b '> |
  
  \barNumberCheck 41
  <e, e'>2 <b' b'>4. <as as'>8 |
  <gs gs'>2 <ds' ds'> |
  <gs, gs'>2\) r |
  <cs gs'>4\(\< <ds gs> <e cs'> <ds bs'> |
  <ds gs>4 <e gs> <fs ds'> <e cs'> |
  <e cs'>4 <gs ds'> <cs e> <gs ds'> |
  <gs ds'>1~\> |
  <gs ds'>4 <cs e> <gs ds'> <e cs'> |
  
  \barNumberCheck 49
  <gs ds'>4 <e cs'> <ds bs'> <cs cs'>\! |
  <ds bs'>\< <e cs'> <ds ds'> <cs e'>\! |
  <gs' ds'>1\) |
  <cs, gs'>4\( <ds gs> <e cs'> <ds bs'> |
  <ds gs>4 <e gs> <fs ds'> <e cs'> |
  <e cs'>4 <gs ds'> <cs e> <gs ds'> |
  \acciaccatura { gs,8 } <gs' ds'>1\) |
  <e, e'>2\( <b'b '> |
  
  \barNumberCheck 57
  <e, e'>2 <b' b'>4. <as as'>8 |
  <gs gs'>2 <ds' ds'> |
  <gs, gs'>2\) r |
  <fs' gs fs'>2( << { <e e'>4 <cs cs'> } \\ { gs'2 } >> |
  <gs, gs'>2.) <gs' gs'>4_\( |
  <cs gs'>2 <gs gs'> |
  <a a'>2 <gs gs'>4 <fs fs'> |
  gs2\) <cs, gs'>2( |
  
  \barNumberCheck 65
  <gs gs'>4) <cs gs'>2.-> |
  <cs gs'>4 <gs gs'>2 <cs gs'>4 |
  <gs' gs,>1 |
  << { <fs fs'>2 } \\ { gs8 gs gs gs } >> <e gs e'>4 <cs cs'> |
  <gs gs'>1( |
  <cs gs'>2) <gs' gs'>\( |
  <es es'>2 <fs fs'> |
  <bs, bs'>2 <cs cs'> |
  
  \barNumberCheck 73
  <gs gs'>2.\) <cs gs'>4 |
  <gs gs'>2. <cs gs'>4 |
  gs'4 gs \voiceThree af'8 af af af | 
  \key df \major
  \voiceFour
  s4 <df f>2. |
  <ef gf>2. s4 |
  <<
    { \staffUp c2.*1/6 s8 bf'2 s4 | }
    \new Voice { \voiceThree s8 \staffDown af,4 s8 s af4 s8 | }
  >>
  \staffUp c2 s2 |
  \staffDown s4 <df f>2. |
  
  \barNumberCheck 81
  s1 * 3 |
  \voiceThree
  r8 af af af  af af af af |
  \repeat unfold 4 { af8 af af af  af af af af | }
  
  \barNumberCheck 89
  s1 |
}

leftHandLower = \relative {
  \voiceFour
  df8 af' \transparent <df f> af  af af <df f> af |
  \transparent <ef' gf>8 af, af af  bf af <df f> af |
  \staffUp gf'8\beamPositionsA [ \staffDown af,16 \staffUp \moveNoteA af' 
    \transparent bf8 \staffDown af,] af af \staffUp <df af'> \staffDown af |
  \staffUp af'8\beamPositionsA [ \staffDown af, \staffUp gf' \staffDown af,] 
    \staffUp <df f>\beamPositionsA [ \staffDown af \staffUp <c gf'> 
    \staffDown af] |
  df,8 af' \transparent <df f> af  af af af af |
  \transparent <ef' gf>8 af, af af  bf af <df f> af |
  \staffUp gf'8\beamPositionsA [ \staffDown af,16 \staffUp \moveNoteA af' 
    \transparent bf8 \staffDown af,] af af \staffUp <df af'> \staffDown af |
  \staffUp af'8\beamPositionsA [ \staffDown af, \staffUp gf' \staffDown af,]
    <df f> af <df f> af |
    
  \barNumberCheck 9
  af,8 af' <c ef> af  <cf ef> af <df, cf' f>\arpeggio df' |
  <gf, bf>8 df' <bf gf'> df  df, af' <df f> af |
  ef8 af <cf ef> af  ef g <df' ef> g, |
  af,8 af' <cf ef> af  <bf df> af <df ff> af |
  af,8 af' \transparent <cf ef> af  af af <cf f> af |
  ef8 gf <bf gf'> gf  bf, f' <bf df f> f |
  f,8 f' <bf df f> f  f, f' <a ef' f> f |
  bf,8 f' <df' f> f,  <c' ef> f, <ef' gf> f, |
  
  \barNumberCheck 17
  <df' f>8 f, <bf df f> f  <a ef'> f <ef' f> f, |
  bf,8 f' <c' ef> f,  <df' f> f, <c' ef> f, |
  \transparent <df' f>8 f, f f  <df' f> gf, <c ef> af |
  df,8 af' \transparent <df f> af  af af <df f> af |
  \transparent <ef' gf>8 af, af af  bf af <df f> af |
  \staffUp gf'8\beamPositionsA [ \staffDown af,16 \staffUp \moveNoteA af' 
    \transparent bf8 \staffDown af,] af af \staffUp <df af'> \staffDown af |
  \staffUp <c af'>8\beamPositionsA [ \staffDown af \staffUp <c gf'> \staffDown
    af] \staffUp <df f>\beamPositionsA [ \staffDown af \staffUp <c gf'> 
    \staffDown af] |
  df,8 af' \transparent <df f> af  af af <df f> af |
  
  \barNumberCheck 25
  \transparent <ef' gf>8 af, af af  bf af <df f> af |
  \staffUp gf'8\beamPositionsA [ \staffDown af,16 \staffUp \moveNoteA af' 
    \transparent bf8 \staffDown af,] af af \staffUp ef' \staffDown af, |
  \staffUp \transparent gf'8\beamPositionsA [ \staffDown af, af af]
    af af af af | 
  \key cs \minor
  s1 * 5 |
  
  \barNumberCheck 33
  s1 * 8 |
  
  \barNumberCheck 41
  s1 * 8 |
  
  \barNumberCheck 49
  s1 * 8 |
  
  \barNumberCheck 57
  s1 * 8 |
  
  \barNumberCheck 65
  s1 * 8 |
  
  \barNumberCheck 73
  s1 * 2 |
  gs,,2 af''8 f gf ef |
  df8 af' \transparent <df f> af  af af af af |
  \transparent <ef' gf>8 af, af af  bf af <df f> af |
  \staffUp gf'8\beamPositionsB [ \staffDown af,16 \staffUp \moveNoteA af' 
    \transparent bf8 \staffDown af,] af af \staffUp <df af'> \staffDown af |
  \staffUp af'8\beamPositionsB [ \staffDown af, \staffUp gf' \staffDown af,] 
    \staffUp <df f>\beamPositionsB [ \staffDown af \staffUp <c gf'> 
    \staffDown af] |
  df,8 af' \transparent <df f> af  af af af af |
  
  \barNumberCheck 81
  <ef' gf>8 af, af af  bf af \oneVoice r4 |
  R1 * 2 |
  \voiceFour
  af,1 |
  df1 |
  af1 |
  af1 |
  df2( af |
  
  \barNumberCheck 89
  df,1)\fermata |
}

leftHand = <<
  \clef bass
  \global
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \new Voice \leftHandUpper
  \new Voice \leftHandLower
>>

dynamics = {
  \override TextScript.Y-offset = -0.5
  s1\p |
  s1 * 7 |
  
  \barNumberCheck 9
  s1 * 8 |
  
  \barNumberCheck 17
  s1 * 8 |
  
  \barNumberCheck 25
  s1 * 3 |
  s1^\sottoVoce |
  s1 * 4 |
  
  \barNumberCheck 33
  s1 * 2 |
  s1\p\cresc |
  s1 * 3 |
  s2... s16\!
  s1-\tweak X-offset 0 \ff |
  
  \barNumberCheck 41
  s1 * 2 |
  s8 s4.\dim s4.. s16\! |
  s1\p |
  s1 * 4 |
  
  \barNumberCheck 49
  s1 * 2
  s8 s4.\cresc s2 |
  s1 * 3 |
  s2... s16\!
  s1-\tweak X-offset 0 \ff |
  
  \barNumberCheck 57
  s1 * 2 |
  s8 s4.\dim s4.. s16\! |
  s1\p |
  s2 s4.\< s8\! |
  s4.\> s8\! s2 |
  s2.\> s8 s\! |
  s1\p |
  
  \barNumberCheck 65
  s1 * 3 |
  s1\< |
  s1 |
  s2\f s4.\> s8\! |
  s4.\< s8\! s4.\> s8\! |
  s2.\< s8 s\! |
  
  \barNumberCheck 73
  s2.\> s8 s\! |
  s2.\> s8 s\! |
  s4.\> s8\! s2 |
  s1\p |
  s1 * 2 |
  s2. \smorzando s16 s8.\startTextSpan |
  s2. s8 s\stopTextSpan |
  
  \barNumberCheck 81
  s2.^\slentando s4\f |
  s1\> |
  s1 |
  s1\p
  s1 |
  s2\< s\> |
  s1\pp |
  s1^\ritenuto |
  
  \barNumberCheck 89
  s1 |
}

pedal = {
  s2.\sustainOn s8 s\sustainOff |
  s4.\sustainOn s8\sustainOff s4 s\sustainOn |
  s8.\sustainOff\sustainOn s16\sustainOff s2\sustainOn s8.\sustainOff\sustainOn 
    s16\sustainOff |
  s4.\sustainOn s8\sustainOff s\sustainOn s\sustainOff s8.\sustainOn 
    s16\sustainOff |
  s2.\sustainOn s8 s\sustainOff |
  s4.\sustainOn s8\sustainOff s4 s\sustainOn |
  s8.\sustainOff\sustainOn s16\sustainOff s2\sustainOn 
    s4\sustainOff\sustainOn |
  s4.\sustainOff\sustainOn s8\sustainOff s4\sustainOn s\sustainOff |
    
  \barNumberCheck 9
  s4.\sustainOn s8\sustainOff s4\sustainOn s8\sustainOff\sustainOn
    s16 s\sustainOff |
  s4.\sustainOn s8\sustainOff s4.\sustainOn s8\sustainOff |
  s4.\sustainOn s8\sustainOff s4.\sustainOn s8\sustainOff |
  s4.\sustainOn s8\sustainOff s2 |
  s2\sustainOn s8 s\sustainOff s4 |
  s4.\sustainOn s8\sustainOff s4.\sustainOn s8\sustainOff |
  s2\sustainOn s4.\sustainOff\sustainOn s8\sustainOff |
  s4.\sustainOn s8\sustainOff s2 |
  
  \barNumberCheck 17
  s1 |
  s4.\sustainOn s8\sustainOff s2 |
  s4.\sustainOn s8\sustainOff s2 |
  s2.\sustainOn s8 s\sustainOff |
  s4.\sustainOn s8\sustainOff s4 s8\sustainOn s\sustainOff |
  s8.\sustainOn s16\sustainOff s4.\sustainOn s8\sustainOff s8.\sustainOn 
    s16\sustainOff |
  s4.\sustainOn s8\sustainOff s\sustainOn s\sustainOff s8.\sustainOn 
    s16\sustainOff |
  s2.\sustainOn s8 s\sustainOff |
  
  \barNumberCheck 25
  s4.\sustainOn s8\sustainOff s4 s8\sustainOn s\sustainOff |
  s2.\sustainOn s8 s\sustainOff |
  s2.\sustainOn s8 s\sustainOff |
  s1 * 5 |
  
  \barNumberCheck 33
  s1 * 2 |
  s2.\sustainOn s8 s\sustainOff |
  s1 * 3 |
  s2.\sustainOn s8 s\sustainOff |
  s4.\sustainOn s8\sustainOff s4.\sustainOn s8\sustainOff |
  
  \barNumberCheck 41
  s4.\sustainOn s8\sustainOff s4.\sustainOn s8\sustainOff |
  s4.\sustainOn s8\sustainOff s4.\sustainOn s8\sustainOff |
  s2.\sustainOn s8 s\sustainOff |
  s1 * 5 |
  
  \barNumberCheck 49
  s1 * 2 |
  s2.\sustainOn s8 s\sustainOff |
  s1 * 3
  s2.\sustainOn s8 s\sustainOff |
  s4.\sustainOn s8\sustainOff s4.\sustainOn s8\sustainOff |
  
  \barNumberCheck 57
  s4.\sustainOn s8\sustainOff s4.\sustainOn s8\sustainOff |
  s4.\sustainOn s8\sustainOff s4.\sustainOn s8\sustainOff |
  s2.\sustainOn s8 s\sustainOff |
  s4.\sustainOn s8\sustainOff s4.\sustainOn s8\sustainOff |
  s2.\sustainOn s4\sustainOff |
  s1 * 2 |
  s2\sustainOn s4.\sustainOff\sustainOn s8\sustainOff |
  
  \barNumberCheck 65
  s4 s\sustainOn s2 |
  s8 s\sustainOff s2\sustainOn s4\sustainOff\sustainOn |
  s2.\sustainOff\sustainOn s8 s\sustainOff |
  s4.\sustainOn s8\sustainOff s4.\sustainOn s8\sustainOff |
  s2.\sustainOn s4\sustainOff |
  s4.\sustainOn s8\sustainOff s4.\sustainOn s8\sustainOff |
  s4.\sustainOn s8\sustainOff s4.\sustainOn s8\sustainOff |
  s4.\sustainOn s8\sustainOff s4 s\sustainOn |
  
  \barNumberCheck 73
  s4. s8\sustainOff s4 s\sustainOn |
  s4. s8\sustainOff s4 s\sustainOn |
  s4 s\sustainOff s2 |
  s2.\sustainOn s8 s\sustainOff |
  s4.\sustainOn s8\sustainOff s4 s8.\sustainOn s16\sustainOff |
  s4\sustainOn s2\sustainOff\sustainOn s4\sustainOff\sustainOn |
  s2\sustainOff\sustainOn s4\sustainOff\sustainOn s8.\sustainOff\sustainOn
    s16\sustainOff |
  s2.\sustainOn s8 s\sustainOff |
  
  \barNumberCheck 81
  s4.\sustainOn s8\sustainOff s2 |
  s1 * 2 |
  s2\sustainOn s4.\sustainOff\sustainOn s8\sustainOff |
  s2.\sustainOn s4\sustainOff |
  s4 s\sustainOn s s8 s\sustainOff |
  s2.\sustainOn s8 s\sustainOff |
  s1\sustainOn |
  
  \barNumberCheck 89
  s2. s4\sustainOff |
}

forceBreaks = {
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\pageBreak
  
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\pageBreak
  
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 8 { s1\noBreak } s1\pageBreak
}

preludeFifteenMusic = \score { 
  \keepWithTag #'layout
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 15"
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
    \new Devnull \forceBreaks
  >>
  \layout {}
}

preludeFifteenMidi = \book {
  \bookOutputName "prelude-op28-no15"
  \score { 
    \keepWithTag #'midi
    <<
      \new Staff = "upper" << \rightHand \dynamics \pedal >> 
      \new Staff = "lower" << \leftHand \dynamics \pedal >> 
    >>
    \midi {}
  }
}
