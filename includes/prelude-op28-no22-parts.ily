%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

moveTieA = \tweak TieColumn.tie-configuration #'((-1 . 1)(-11 . -1)) \etc
moveTieB = \tweak TieColumn.tie-configuration #'((0 . 1)(-9 . -1)) \etc
moveTieC = \tweak TieColumn.tie-configuration #'((5 . 1)(-5 . -1)) \etc
moveTieD = \tweak TieColumn.tie-configuration #'((2 . -1)) \etc
moveTieE = \tweak TieColumn.tie-configuration #'((-4 . -1)) \etc
moveTieF = \tweak TieColumn.tie-configuration #'((2 . -1)) \etc

%%% Music %%%

global = {
  \time 6/8
  \key g \minor
  \accidentalStyle piano
}

rightHandUpper = \relative {
  \partial 4. \oneVoice r4 r8 
  r8 \voiceOne <a~ c~ ef>4(^\> <a c d>)\! \oneVoice r8 |
  \clef treble r8 \voiceOne <ef' fs>4(\moveTieE ~^\> <ef g>4)\! \oneVoice r8 |
  r8 \voiceOne <c~ ef~ g>4(^\> <c ef fs>4)\! \oneVoice r8 | 
  r8 \voiceOne <fs a>4(^\> <g bf>)\! \oneVoice r8 |
  r8 \voiceOne <ef' g>4(^\> <d fs>)\! \oneVoice r8 |
  r8 \voiceOne <df f>4(^\> <c e>)\! \oneVoice r8 |
  r8 \voiceOne <df f>4(^\> <c e>)\! \oneVoice r8 |
  r8 <ef, a c ef>4-> r r8 |
  
  \barNumberCheck 9
  r8 \voiceOne <a~ c~ ef>4(^\> <a c d>)\! \oneVoice r8 |
  r8 \voiceOne <ef' fs>4(-\moveTieD ~^\> <ef g>4)\! \oneVoice r8 |
  r8 \voiceOne <c~ ef~ g>4(^\> <c ef fs>4)\! \oneVoice r8 | 
  r8 \voiceOne <fs a>4(^\> <g bf>)\! \oneVoice r8 |
  r8 \voiceOne bf4-> \oneVoice r8 \voiceOne a4-> \oneVoice |
  r8 \voiceOne af4-> \oneVoice r8 \voiceOne g4-> \oneVoice |
  r8 \voiceOne ef4-> \oneVoice r8 \voiceOne ef4-> \oneVoice |
  <ef, g c ef>8-. <ef af c ef>-. r r4 r8 |
  
  \barNumberCheck 17
  r8 \voiceOne f'4-> \oneVoice r8 \voiceOne g4-> \oneVoice |
  r8 \voiceOne af4-> \oneVoice r8 \voiceOne ef4-> \oneVoice |
  r8 \voiceOne f4-> \oneVoice r8 \voiceOne g4-> \oneVoice |
  r8 \voiceOne af4-> \oneVoice r8 \voiceOne g4-> \oneVoice |
  r8 \voiceOne f4-> \oneVoice r8 \voiceOne fs4-> \oneVoice |
  r8 \voiceOne g4-> \oneVoice r8 \voiceOne c,4-> \oneVoice |
  r8 \voiceOne d4-> \oneVoice r8 \voiceOne g,4-> \oneVoice |
  r8 \voiceOne c4-> \oneVoice r8 <fs, bf>^>( <c a'>) |
  
  \barNumberCheck 25
  r8 \voiceOne f'4-> \oneVoice r8 \voiceOne g4-> \oneVoice |
  r8 \voiceOne af4-> \oneVoice r8 \voiceOne ef4-> \oneVoice |
  r8 \voiceOne f4-> \oneVoice r8 \voiceOne g4-> \oneVoice |
  r8 \voiceOne af4-> \oneVoice r8 \voiceOne g4-> \oneVoice |
  r8 \voiceOne f4-> \oneVoice r8 \voiceOne fs4-> \oneVoice |
  r8 \voiceOne g4-> \oneVoice r8 \voiceOne c,4-> \oneVoice |
  r8 \voiceOne d4-> \oneVoice r8 \voiceOne g,4-> \oneVoice |
  r8 \voiceOne c4-> \oneVoice r8 <fs, bf>^>( <c a'>) |
  
  \barNumberCheck 33
  r8 \voiceOne d'4-> \oneVoice r8 \voiceOne g,4-> \oneVoice |
  r8 \voiceOne c4-> \oneVoice r8 \voiceOne g4-> \oneVoice |
  \clef bass r8 \voiceOne <a,~ c~ ef>4(^\> <a c d>)\! \oneVoice r8 |
  \clef treble r8 \voiceOne <ef' fs>4(-\moveTieE ~^\> <ef g>4)\! \oneVoice r8 |
  r8 \voiceOne <ef fs>4(-\moveTieE ~ ^\> <ef g>4)\! \oneVoice r8 |
  r8 \voiceOne <ef' fs>4(-\moveTieF ~ ^\> <ef g>4)\! \oneVoice r8 |
  \ottava 1 <g bf ef g>4-^ \ottava 0 r8 r4 r8 |
  <d, g bf d>4. <fs, c' d fs> |
  
  \barNumberCheck 41
  <g bf d g>2.\arpeggio\fermata |
  \bar "|."
}

rightHandLower = \relative {
  \partial 4. s4.
  \voiceTwo
  s8 a ef d4 s8 |
  \clef treble s8 c'8 fs, g4 s8 |
  s8 c g fs4 s8 |
  s8 ef' a, bf4 s8 |
  s8 bf'8 g <fs a>4 s8 |
  s8 af f <e g>4 s8 |
  s8 af f <e g>4 s8 |
  s2. |
  
  \barNumberCheck 9
  s8 a ef d4 s8 |
  s8 c'8 fs, g4 s8 |
  s8 c g fs4 s8 |
  s8 ef' a, bf4 s8 |
  s8 g'( bf,) s <e g>( a,) |
  s8 f'( af,) s <d f>( g,) |
  s8 <g c>( ef) s <gf c>( ef) |
  s2. |
  
  \barNumberCheck 17
  s8 <af df>( f) s <bf ef>( g) |
  s8 <c ef>( af) s <af c>( ef) |
  s8 <af df>( f) s <bf ef>( g) |
  s8 <c ef>( af) s <c ef>( g) |
  s8 <af d>( f) s <a d>( fs) |
  s8 <bf d>( g) s <g a>( c,) |
  s8 <g' bf>( d) s <bf ef>( g) |
  s8 <ef' g>( c) s4. |
  
  \barNumberCheck 25
  s8 <af' df>( f) s <bf ef>( g) |
  s8 <c ef>( af) s <af c>( ef) |
  s8 <af df>( f) s <bf ef>( g) |
  s8 <c ef>( af) s <c ef>( g) |
  s8 <af d>( f) s <a d>( fs) |
  s8 <bf d>( g) s <g a>( c,) |
  s8 <g' bf>( d) s <bf ef>( g) |
  s8 <ef' g>( c) s4. |
  
  \barNumberCheck 33
  s8 <g' bf>( d) s <bf ef>( g) |
  s8 <ef' g>( <c fs>) s <bf ef>( g) |
  \clef bass s8 a ef d4 s8 |
  \clef treble s8 c'8 fs, g4 s8 |
  s8 c8 fs, g4 s8 |
  s8 c'8 fs, g4 s8 |
}

rightHand = <<
  \clef bass
  \global
  \set Score.tempoHideNote = ##t 
  \tempo "Molto agitato" 4. = 98
  \new Voice \rightHandUpper
  \new Voice \rightHandLower
>>

leftHand = \relative {
  \clef bass
  \global
  \partial 4. <bf,, bf'>8( <a a'>8. <g g'>16)
  q4.(~ q8 <fs fs'> <a a'>) |
  q4.(\moveTieA ~ q8 <bf bf'> <g g'>) |
  <bf bf'>4.(~ q8 <a a'> <c c'>) |
  q4.(-\moveTieB ~ q8 <d d'> <bf bf'>) |
  <cs' cs'>4.(~ q8 <d d'> <a a'>) |
  <b b'>4.(~ q8 <c c'> <g g'>) |
  <b b'>4.(~ q8 <c c'> <g g'>) |
  \stemDown q8( <fs fs'> <g g'> \stemNeutral <bf bf'>[ <a a'>) r16 <g g'>]-. |
  
  \barNumberCheck 9
  <g g'>4.(\moveTieC ~ q8 <fs fs'> <a a'>) |
  q4.(~ q8 <bf bf'> <g g'>) |
  <bf bf'>4.(~ q8 <a a'> <c c'>) |
  q4.(~ q8 <d d'> <bf bf'>) |
  <g' g'>8( <ef ef'> <d d'>) q4->( <cs cs'>8) |
  <f f'>8( <df df'> <c c'>) q4->( <b b'>8) |
  <ef ef'>8( <c c'> <bf bf'> <a a'> <c c'> <af af'>) |
  <g g'>8-. <gf gf'>-. <f f'>-. <e e'>-. <ef ef'>-. <d d'>-. |
  
  \barNumberCheck 17
  <df df'>8 <df' df'> q q q q |
  <c c'>8 <bf bf'> <af af'> <g g'> <f f'> <ef ef'> |
  <df df'>8 <df' df'> q q q q |
  <c c'>8 <bf bf'> <af af'> <g g'> <f f'> <ef ef'> |
  \stemDown <d d'>8 <c' c'> q \stemNeutral q q q |
  <bf bf'>8 <a a'> <g g'> <ef ef'> <d d'> < c c'> |
  <bf bf'>4 r8 <ef ef'>4 r8 |
  <a, a'>4 r8 <d d'>4 r8 |
  
  \barNumberCheck 25
  <df df'>8 <df' df'> q q q q |
  <c c'>8 <bf bf'> <af af'> <g g'> <f f'> <ef ef'> |
  <df df'>8 <df' df'> q q q q |
  <c c'>8 <bf bf'> <af af'> <g g'> <f f'> <ef ef'> |
  \stemDown <d d'>8 <c' c'> q \stemNeutral q q q |
  <bf bf'>8 <a a'> <g g'> <ef ef'> <d d'> < c c'> |
  <bf bf'>4 r8 <ef ef'>4 r8 |
  <a, a'>4 r8 <d d'>4 r8 |
  
  \barNumberCheck 33
  <bf bf'>4 r8 <ef ef'>4 r8 |
  <a, a'>4.( <bf bf'>8[ <a a'>) r16 <g g'>] |
  q4.(~ q8 <fs fs'> <a a'>) |
  q4.(-\moveTieA ~ q8 <bf bf'> <g g'>) |
  <a a'>4.(-\moveTieA ~ q8 <bf bf'> <g g'>) |
  <a a'>4.(-\moveTieA ~ q8 <bf bf'> <g g'>) |
  <cs, cs'>4 r8 r4 r8 |
  <d d'>4. <d' a' d> |
  
  \barNumberCheck 41
  \slashedGrace { g,8 } <g' d'>2.\arpeggio\fermata |
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \partial 4. s4.
  s2.\f |
  s2. * 7 |
  
  \barNumberCheck 9
  s2. * 6 |
  s2.^\crescm
  s2.\< |
  
  \barNumberCheck 17
  s2.\ff |
  s2. * 5 |
  s2.\f |
  s2. |
  
  \barNumberCheck 25
  s2.\ff |
  s2. * 5 |
  s2.\f |
  s2. |
  
  \barNumberCheck 33
  s2. * 3 |
  s2.\cresc |
  s2. |
  s2 s8 s16 s\! |
  \tag layout { s2.^\ffz | }
  \tag midi   { s2.\fz | }
  s2.\ff |
  
  \barNumberCheck 41
  s2. |
}

pedal = {
  \partial 4. s4.
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s4.\sustainOn s4\sustainOff\sustainOn s8\sustainOff |
  s2. |
  s4.\sustainOn s4\sustainOff\sustainOn s8\sustainOff |
  s2. |
  s4.\sustainOn s4\sustainOff\sustainOn s8\sustainOff |
  s2. |
  s4.\sustainOn s4\sustainOff\sustainOn s8\sustainOff |
  s4.\sustainOn s4\sustainOff\sustainOn s8\sustainOff |
  
  \barNumberCheck 25
  s4.\sustainOn s4\sustainOff\sustainOn s8\sustainOff |
  s2. |
  s4.\sustainOn s4\sustainOff\sustainOn s8\sustainOff |
  s2. |
  s4.\sustainOn s4\sustainOff\sustainOn s8\sustainOff |
  s2. |
  s4.\sustainOn s4\sustainOff\sustainOn s8\sustainOff |
  s4.\sustainOn s4\sustainOff\sustainOn s8\sustainOff |
  
  \barNumberCheck 33
  s4.\sustainOn s4\sustainOff\sustainOn s8\sustainOff |
  s4\sustainOn s8\sustainOff s4. |
  s2. * 4 |
  s4\sustainOn s8\sustainOff s4. |
  s4.\sustainOn s4\sustainOff\sustainOn s16 s\sustainOff |
  
  \barNumberCheck 41
  s2\sustainOn s4\sustainOff |
}

forceBreaks = {
  \partial 4. s4.
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\pageBreak
  
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
}

preludeTwentyTwoMusic = \score { 
  \keepWithTag #'layout
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 22"
    connectArpeggios = ##t
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
    \new Devnull \forceBreaks
  >>
  \layout {}
}

preludeTwentyTwoMidi = \book {
  \bookOutputName "prelude-op28-no22"
  \score { 
    \keepWithTag #'midi
    <<
      \new Staff = "upper" << \rightHand \dynamics \pedal >> 
      \new Staff = "lower" << \leftHand \dynamics \pedal >> 
    >>
    \midi {}
  }
}
