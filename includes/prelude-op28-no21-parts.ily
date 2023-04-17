%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.22.2"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . 0)) \etc

slurPositionsA = \tweak Slur.positions #'(0 . 0) \etc

tweakNoteA = 
  \tweak NoteColumn.force-hshift -0.3 
  \tweak Stem.length 6 
  \etc
  
forceHShiftA = \tweak NoteColumn.force-hshift 0.15 \etc

%%% Music %%%

global = {
  \time 3/4
  \key bf \major
  \accidentalStyle piano
}

rightHand = \relative {
  \clef treble
  \global
  \set Score.tempoHideNote = ##t 
  \tempo "Cantabile" 4 = 68
  
  f''2.\( |
  d2 \grace { f8 } ef4 |
  d2. |
  g,2.\) |
  a4\( ef' ef |
  ef4 \grace { ef16[ f ef] } d4 ef |
  g2~ g8. f16 |
  d2\) r4 |
  
  \barNumberCheck 9
  bf'2.( |
  bf,2~ bf8.) bf16( |
  g'2. |
  g,4 \grace { g8[ a g fs g] } ef'4 c |
  a8)\noBeam <f' d'>( <e g> <ef a> <d bf'> <df f> |
  <c af'>8 <bf gf'> <a c> <af d> <g ef'> <gf bf>) |
  r8 <f d'>^( <e g> <ef a> <d bf'> f |
  bf,8) r r4 r |
  
  \barNumberCheck 17
  <bf' df bf'>2.\( |
  <gf bf gf'>2 <cf ef cf'>4 |
  <bf df bf'>2. |
  <gf bf gf'>2.\) |
  <df' bf' df>2\( <bf gf' bf>4 |
  <gf' bf gf'>2 <df bf' df>4 |
  \slashedGrace { <cf af' cf>8 } q4 <bf gf' bf>4\) r |
  R2. |
  
  \barNumberCheck 25
  <bf df bf'>2.\( |
  <gf bf gf'>2 <cf ef cf'>4 |
  <bf df bf'>2. |
  <gf bf gf'>2.\) |
  <df' bf' df>2\( <bf gf' bf>4 |
  <gf' bf gf'>2 <df bf' df>4 |
  \slashedGrace { <cf af' cf>8 } q4 <bf gf' bf>4\) r |
  R2. |
  
  \barNumberCheck 33
  << { f'4-> s2 } \\ { r8 f,^( <e g> <ef a> <d bf'> <c c'>) } >> |
  << { d'4 s2 } \\ { r8 f,^( <e g> <ef a> <d bf'> d') } >> |
  << { g4-> s2 } \\ { r8 g,^( <fs a> <f b> <ef c'> <d d'>) } >> |
  << { ef'4 s2 } \\ { r8 g,^( <fs a> <f b> <ef c'> ef') } >> |
  << { a4-> s2 } \\ { r8 a,^( <gs b> <g cs> <f d'> f') } >> |
  << { bf4-> s2 } \\ { r8 bf,^( <a c> <af d> <g ef'> <gf gf'>) } >>
  r8 f'\( <gf bf ef>-> f <gf bf ef>-> f |
  <gf bf ef>8-> f <gf bf ef>-> f <gf bf ef>-> f |
  
  \barNumberCheck 41
  <gf ef'>8 <f d'> <e g> <ef a> <d bf'> <df f> |
  <c af'>8 <bf gf'> <a c> <af d> <g ef'> <gf bf> |
  <f df'>8 <e c'> <ef g> <d gs> <cs a'> <c ef> |
  <bf gf'>8 <a f'> <af c> <g d'> << { ef'4 } \\ { gf,8 <f a> } >>
  <f bf d>8\) r r4 r |
  r8 
    << 
      { s4. c''4 | s4 } 
      \\ 
      { <gf ef'>8-\slurShapeA ^( <f a> <e bf'> ef gf | \stemUp <d f bf d>4) } 
    >> 
    r4 r  |
  r8 
    << 
      { s4. c'4 | s4 } 
      \\ 
      { 
        <gf ef'>8-\slurShapeA ^(^\> <f a> <e bf'> ef gf | \stemUp 
          <d f bf d>4)\! 
      } 
    >> 
    r4 r  |
    
  % \barNumberCheck 50
  <<
    { \shiftOff <g, g'>2.( | <f bf f'>2.) | }
    \\
    { \tweakNoteA d'4.-> c8 ef d | \tweakNoteA d2. }
    \\
    { \voiceOne \forceHShiftA bf4 s2 | s2. }
  >>
  <<
    { 
      \shiftOff <g g'>2.( | 
      <f_~ bf_~ f'^~>2. | 
      \tag layout { <f bf d f>2.) } \tag midi { <f bf f'>2. } | }
    \\
    { 
      \tweakNoteA d'4.-> c8 ef d | 
      \tweakNoteA d2.^~ | 
      \hideNotes \voiceOne d2. | 
    }
    \\
    { \voiceOne \forceHShiftA bf4 s2 | s2. | s2. | }
  >>
  R2. * 2 |
  
  \barNumberCheck 57
  <<
    { \shiftOff <f ef' f>2.( | <f d' f>2.) | }
    \\
    { \tweakNoteA c'2.-> | \tweakNoteA bf2.-> }
  >> 
  \bar "|."
}

leftHand = \relative {
  \clef bass
  \global

  bf,,8\noBeam f''( <e g>\< <ef a> <d bf'> <c c'>\! |
  bf8)\noBeam <f' d'>( <e g>\< <ef a> <d bf'> bf\! |
  ef,8)\noBeam g'( <fs a>\< <f b> <ef c'> <d d'>\! |
  c8)\noBeam <g' ef'>( <fs a>\< <f b> <ef c'> c\! |
  f,8)\noBeam <bf' gf'>( <a f'>\> <af c> <g ef'> <gf bf>\! |
  f,8)\noBeam <gf' ef'>( <f d'>\> <e g> <ef a> f\! |
  bf,8)\noBeam f'( <e g>\< <ef a> <d bf'> <c c'>\! |
  bf8)\noBeam <f' d'>( <e g>\< <ef a> <d bf'> <c c'>\! |
  
  \barNumberCheck 9
  g8)\noBeam d''( <cs e>\< <c fs> <bf g'> <a a'>\! |
  bf,8)\noBeam bf'( <a c>\< <af d> <g ef'> <f f'>\! |
  ef,8)\noBeam g'( <fs a>\< <f b> <ef c'> <d d'>\! |
  c8)\noBeam <g' ef'>( <fs a>\< <f b> <ef c'> <c ef'>\! |
  f,8)\noBeam \clef treble <f'' d'>_\( <e g> <ef a> <d bf'> <df f> |
  <c af'>8 <bf gf'> <a c> <af d> <g ef'> <gf bf> |
  \clef bass bf,8\)\noBeam <f' d'>\( <e g> <ef a> <d bf'> f |
  bf,8\) <f' d'>\( <e g> <ef a> <d bf'> bf\) |
  
  \barNumberCheck 17
  gf,8\noBeam <df'' bf'>\( <gf df'> <bf ef> <gf df'> <df bf'> |
  <gf df'> <bf ef> <gf df'> <df bf'> <gf df'> <bf ef> |
  <gf df'> <df bf'> <gf df'> <bf ef> <gf df'> <df bf'> |
  <gf df'> <bf ef> <gf df'> <df bf'> <gf df'> <bf ef> | 
  <gf df'> <df bf'> <gf df'> <bf ef> <gf df'> <df bf'> |
  <gf df'> <bf ef> <gf df'> <df bf'> <gf df'> <bf ef> |
  <gf df'> <df bf'> <gf df'> <bf ef> <gf df'> <df bf'> |
  <gf df'> <bf ef> <gf df'> <df bf'> <gf df'> <bf ef>\) |
  
  \barNumberCheck 25
  <gf ff'>8\( <bf df> <gf gf'> <bf ef> <gf ff'> <bf df> |
  gf8 <bf ef> <gf ff'> <bf df> <gf gf'> <bf ef> | 
  <gf ff'>8 <bf df> <gf gf'> <bf ef> <gf ff'> <bf df> |
  gf8 <bf ef> <gf ff'> <bf df> <gf gf'> <bf ef> |
  <gf ff'>8 <bf df> <gf gf'> <bf ef> <gf ff'> <bf df> |
  <gf gf'>8 <bf ef> <gf ff'> <bf df> <gf gf'> <bf ef> |
  <gf ff'> <bf df> <gf gf'> <bf ef> <gf ff'> <bf df> |
  <gf gf'>\< <bf ef> <gf ff'> <bf df> <gf e'> <bf c>\)\! |
  
  \barNumberCheck 33
  f,,8\noBeam f''( <e g> <ef a> <d bf'> c |
  f,8)\noBeam f'( <e g> <ef a> <d bf'> f |
  f,8)\noBeam g'-\slurPositionsA ^( <fs a> <f b> <ef c'> d |
  f,8)\noBeam g'^( <fs a> <f b> <ef c'> g |
  f,8)\noBeam a'^( <gs b> <g cs> <f d'> a |
  f,8)\noBeam bf'^( <a c> <af d> <g ef'> gf |
  <f,, f'>8-.)\noBeam \clef treble f'''_\( <gf bf ef>-> f <gf bf ef>-> f |
  \stemUp <gf bf ef>8-> f <gf bf ef>-> f <gf bf ef>-> f |
  
  \barNumberCheck 41
  \stemNeutral <gf ef'>8 <f d'> <e g> <ef a> <d bf'> <df f> |
  <c af'>8[ <bf gf'>] \clef bass <a c> <af d> <g ef'> <gf bf> |
  <f df'>8 <e c'> <ef g> <d gs> <cs a'> <c ef> |
  <bf gf'>8 <a f'> <af c> <g d'> <gf ef'> f |
  bf,\)\noBeam e'( f bf a g |
  f,8)\noBeam <gf' ef'>( <f a> <e bf'> <ef c'> gf |
  bf,8)\noBeam e( f bf a g |
  f,8)\noBeam <gf' ef'>( <f a> <e bf'> <ef c'> gf |
  
  \barNumberCheck 49
  bf,,)\noBeam e(^\< f bf a g)\! |
  g,2( a4 |
  bf8)\noBeam e( f bf a g) |
  g,2( a4 |
  bf8)\noBeam e( f bf a g |
  bf,8)\noBeam^\< e_( f c' a bf |
  ef8 cs d g e f\! |
  d'4)-> r r |
  
  \barNumberCheck 57
  <f,,, f'>2. |
  <bf bf'>2. |
}

dynamics = {
  \override TextScript.Y-offset = -0.5

  s2.\p |
  s2. * 7 |
  
  \barNumberCheck 9
  s2. * 4 |
  s8 s\> s2 |
  s2 s8 s\! |
  s8 s\> s4. s8\! 
  s8 s^\dimm s2 |
  
  \barNumberCheck 17
  s2.\f |
  s2. * 7 |
  
  \barNumberCheck 25
  s2.\pp |
  s2. * 7 |
  
  \barNumberCheck 33
  s2.\cresc |
  s2. * 4 |
  s2 s8 s\! |
  s8\ff s8\< s2 |
  s2 s8 s\! |
  
  \barNumberCheck 41
  s4. s\dim |
  s2. * 2 |
  s4. s\! |
  s2. |
  s8 s\> s4. s8\! |
  s2. * 2 |
  
  \barNumberCheck 49
  s2. * 7 |
  s2.\f |
  
  \barNumberCheck 57
  s2. * 2 |
}

pedal = {
  \repeat unfold 8 { s4\sustainOn s2\sustainOff | }
  
  \barNumberCheck 9
  \repeat unfold 3 { s4\sustainOn s2\sustainOff | }
  s4\sustainOn s\sustainOff s\sustainOn |
  s8 s\sustainOff s2 |
  s2. |
  s4\sustainOn s2\sustainOff |
  s4\sustainOn s2\sustainOff |
  
  \barNumberCheck 17
  s2.\sustainOn |
  s2 s8 s\sustainOff |
  s2.\sustainOn |
  s2. * 4 |
  s2 s8 s\sustainOff |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  \repeat unfold 6 { s4\sustainOn s2\sustainOff | }
  s2.\sustainOn |
  s2 s8 s\sustainOff |
  
  \barNumberCheck 41
  s2. * 4 |
  s4.\sustainOn s\sustainOff |
  s4\sustainOn s2\sustainOff |
  s4.\sustainOn s\sustainOff |
  s4\sustainOn s2\sustainOff |
  
  \barNumberCheck 49
  s2. * 7
  s4\sustainOn s2\sustainOff |
  
  \barNumberCheck 57
  s2\sustainOn s4\sustainOff |
  s2\sustainOn s4\sustainOff |
}

preludeTwentyOneMusic = \score { 
  \keepWithTag #'layout
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 21"
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
  >>
  \layout {}
}

preludeTwentyOneMidi = \book {
  \bookOutputName "prelude-op28-no21"
  \score { 
    \keepWithTag #'midi
    <<
      \new Staff = "upper" << \rightHand \dynamics \pedal >> 
      \new Staff = "lower" << \leftHand \dynamics \pedal >> 
    >>
    \midi {}
  }
}
