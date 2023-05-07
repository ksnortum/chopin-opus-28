%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

moveTupletNumberA = \tweak TupletNumber.Y-offset 5.75 \etc
moveNoteColumnA = \once \override Score.NoteColumn.X-offset = 1

%%% Music %%%

global = {
  \time 2/2
  \key bf \minor
  \accidentalStyle piano
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1,1
}

rightHand = \relative {
  \clef treble
  \global
  \set Score.tempoHideNote = ##t 
  \tempo 4 = 138
  
  \omit TupletBracket
  \tupletUp
  \tuplet 3/2 { <ef' a gf'>4->( <ef a f'>-> <ef a e'>^> }
  \moveTupletNumberA
  \tuplet 3/2 { <ef a ef'>^> <ef a df>^> \tempo 4 = 60 
                \tag layout { <ef a c>4^>) } 
                \tag midi   { <ef a c>8^>) r } } |
  \bar "||" \fermataOverBarLine
  \tempo "Presto con fuoco" 4 = 138
  f'16\( ef c df  f, a bf c  df ef f g  a bf c df |
  \ottava 1 ef16 f g a  bf c df ef  e f ef df  c bf a bf |
  af16 gf f e  \ottava 0 f ef df c  bf a bf af  gf f ef df |
  c16 df ef f  gf af bf c  bf af gf f  ef df c ef |
  gf16 d f ef  c gf b c  df c d ef  f ef e f |
  af16 gf a bf  df c df d  \ottava 1 f ef e f  a bf af g |
  gf16 f' ef ef,  df' c c, bf'  a a, af' gf  gf, f' ef gf, |
  
  \barNumberCheck 9
  \ottava 0 f16 ef' df f,  df' c ef, c'  df, bf' af c,  af' gf bf, gf'\) |
  a,16( bf c df  ef e f gf  e f d ef  c df c bf) |
  a16( bf c df  ef e f gf  e f d ef  c df c bf) |
  b16( c d ef  e f g af  fs g e f  d ef d c) |
  b16( c d ef  e f g af  fs g e f  d ef d c) |
  df16( ef f gf  af bf b c  cs d f ef  c a gf ef) |
  df16(  ef f gf  af bf b c  df c ef df  bf g e df) |
  c16\( df d ef  e f gf g  af a c bf  gf f ef df |
  
  \barNumberCheck 17
  c16 bf a c  gf f e f  gf f bf a  df c af' gf\) |
  f16\( ef c df  f, a bf c  df ef f g  a bf c df |
  \ottava 1 ef16 f g a  bf c df ef  e f ef df  c bf a bf |
  af16 gf f e  \ottava 0 f ef df c  bf a bf af  gf f ef df |
  c16 df ef f  gf af bf c  bf af gf f  ef df c ef |
  gf d ff ef  c gf b c  df c d ef  ff ef e f |
  af16 gf b c  \ottava 1 df c d ef  ff ef e f  af bf af g |
  gf16 f' ef gf,  ef' df f, df'  c ef, c' bf  df, bf' af c, |
  
  \barNumberCheck 25
  af'16 gf bf, gf'  \ottava 0 f  af, f' ef  gf, ef' df f,  bf af f df\) |
  c16( df ef e  f gf af bff  g af ef ff  af, ff' ef df) |
  c16( df ef e  f gf af bff  g af ef ff  af, ff' df cf) |
  as16( b cs d  ds e fs g  es fs ds e  cs d b a) |
  gs16( a b c  cs d e f  ds e cs d  b c b a) |
  gs16(^\stretto a df c  bf a gf' f  ef df) c'( bf  af gf f ef |
  df16 c) bf'( af  gf f ef df  c bf) af'( gf  f ef df c |
  bf16 a af g)  af( g gf f)  g( gf f e)  gf( f e ef) |
  
  \barNumberCheck 33
  f16( e ef d)  e( ef d df)  ef( d df c)  ef( df c bf) |
  \semprePuiAnimato a16^(\startTextSpan bf c df  ef e f gf  e f d ef
    c df c bf) |
  a16^( bf c df  ef e f gf  e f d ef  c\stopTextSpan df c bf) |
  c16^( df ef f  gf c bf c,  bf c df ef  f c' bf gf) |
  e16^( f gf f  bf a gf' f  ef df bf f  ef df bf f) |
  a16^( bf c df  ef e f gf  e f d ef  c df c bf) |
  a16^( bf c df  ef e f gf  e f d ef  c df c bf) |
  cf16^( df ef ff  gf af bf cf  df ef ff gf  af bf cf df |
  
  \barNumberCheck 41
  ff16 ef cf af  gf ef cf af  gf ef cf af  \clef bass gf ef cf af) |
  e16\( f bf a  gf f df' c  bf a gf' f  df c bf' a |
  gf16 f df' c  \clef treble bf a gf' f  df c bf' a  gf f df' c |
  bf16 a gf' f  df c bf' a  gf f df' c  bf a gf' f |
  \ottava 1 df16 c bf' a  gf f df' c f8-!\) \ottava 0 r <ef,,, a f'>4-. |
  <bf' bf'>4-. r r2 |
  \bar "|."
}

leftHand = \relative {
  \clef bass
  \global
  
  \omit TupletBracket
  \tupletUp
  \tuplet 3/2 2 { <f,, f'>4 <c'' f c'> q q q 
                  \tag layout { q } 
                  \tag midi   { q8 r } } |
  \fermataUnderbarLine
  \moveNoteColumnA
  \repeat unfold 3 { bf8( <f' df'>) r f, bf( <f' df'>) r f, | }
  \repeat unfold 2 { bf8( <ef gf ef'>) r bf, bf'( <ef gf ef'>) r bf, | }
  bf'8( <ef gf ef'>) r bf, bf'( <ef gf ef'>) r bf |
  a8( <gf' ef'>) r a,, a'( <gf' ef'>) r a, |
  
  \barNumberCheck 9
  bf8( <f' df'>) r bf, df( <f bf f'>) r df( |
  ef8 <a gf'>) r ef( df <f bf f'>) r df( |
  ef8 <a gf'>) r ef( df <f bf f'>) r df( |
  f8 <b af'>) r f( ef <g c g'>) r ef( |
  f8 <b af'>) r f( ef <g c g'>) r ef( |
  f8 <af df af'>) r f( gf <a c a'>) r gf( |
  f8 <af df af'>) r f( e <bf' df g>) r e,( |
  ef8 <a gf'>) r ef( df <f bf f'>) r4 |
    
  \barNumberCheck 17
  f,8 r <c' f a ef'>4 r2 |
  <bf, bf'>8 <df' f df'> r <f,, f'>( <bf bf'>) <df' f df'> r <f,, f'>( |
  \repeat unfold 2 {
    <bf bf'>8) <df' f df'> r <f,, f'>( <bf bf'>) <df' f df'> r <f,, f'>( |
  }
  <bf bf'>8) <ef' gf ef'> r <f,, f'>( <bf bf'>) <ef' gf ef'> r <f,, f'>( |
  \repeat unfold 2 {
    <bff bff'>8) <ef' gf ef'> r <ef,, ef'>( <bff' bff'>) <ef' gf ef'> r
      <ef,, ef'>( |
  }
  <af af'>) <ef'' c' gf'> r <ef,, ef'>( <af af'>) <ef'' c' gf'> r af,,( |
  
  \barNumberCheck 25
  af'8) <f' df' f> r af,,( af') <f' df'> r af,,( |
  af'8) <ef' gf c> r af,,( af') <ff' df'> r af,,( |
  af'8) <ef' gf c> r af,( df) <ff df'> r g,( |
  fs8) <fs' as e'> r fs,,( fs') <fs' b d> r f,( |
  e8) <e' gs d'> r e,,( e') <e' a c> r <e,, e'> |
  <f f'>8 r <c'' f ef'>4\arpeggio <bf f' df'>\arpeggio <ef bf' gf'>\arpeggio |
  <af, gf' c>4\arpeggio <df af' f'>\arpeggio <gf, df' bf'>\arpeggio 
    <c gf' ef'>\arpeggio |
  <df f bf df>4 <ef gf bf c> r gf16( f e ef) |
  
  \barNumberCheck 33
  f16( e ef d)  e( ef d df)  ef( d df c)  ef( df c bf) |
  ef,8( <a gf'>) r ef( df) <bf' f'> r df,( |
  ef8) <a gf'> r ef( df) <bf' f'> r df,( |
  ef8) <bf' gf'> r ef,( f) <df' bf'> r f,,( |
  f'8) <ef' a> r f,( bf) <f' df'> r df,( |
  ef8) <a gf'> r ef( df) <bf' f'> r df,( |
  ef8) <a gf'> r ef( df) <bf' f'> r df,( |
  <ef cf' gf'>4) r <ef' gf cf gf'> <df gf bf ff'> |
  
  \barNumberCheck 41
  << { ef'2*1/2 } \\ { <cf, gf'>4 } >> r4 r2 |
  e,,16\( f bf a  gf f df' c  bf a gf' f  df c bf' a |
  gf16 f df' c  bf a gf' f  df c bf' a  gf f df' c |
  bf16 a gf' f  \clef treble df c bf' a  gf f df' c  bf a gf' f |
  df16 c bf' a  gf f df' c f8-!\) r \clef bass <f,,,, f'>4-. |
  \slashedGrace { bf,8 } <bf' f' df'>4-.-> r r2 |
}

dynamics = {
  s1-\tweak Y-offset -2.5 \f |
  s1\< |
  s2 s8 s\> s4 |
  s2. s4\! |
  s2.\< s8. s16\! |
  s4 s2.\< |
  s1 |
  s1\> |
  
  \barNumberCheck 9
  s2. s8. s16\! |
  s4 s2.\cresc |
  s1 * 2 |
  s2. s8. s16\! |
  s8. s16\< s4 s8 s\sf\> s8. s16\! |
  s8. s16\< s4 s8 s\> s8. s16\! |
  s8. s16\< s4 s8 s\> s8. s16\! |
  
  \barNumberCheck 17
  s4 s2.\< |
  s8.-\tweak X-offset 0 \ff s16\< s2. |
  s2 s\> |
  s1 |
  s1\< |
  s2\ff s\< |
  s1 |
  s1\> |
  
  \barNumberCheck 25
  s1 |
  \repeat unfold 4 { s4..\< s16\! s2\> | }
  s4\! s8. s16\< s s\! s s\> s8. s16\! |
  s1 |
  s4 s8.\> s16\! s8.\> s16\! s8.\> s16\! |
  
  \barNumberCheck 33
  s8.\> s16\! s8.\> s16\! s8.\> s16\! s8.\> s16\! |
  \repeat unfold 2 { s4..\< s16\! s2\> | }
  s4..\< s16\! s2\< |
  \repeat unfold 3 { s4..\< s16\! s2\> | }
  s4\! s8 s\< s4 s8. s16\! |
  
  \barNumberCheck 41
  s2\> s8 s\! s4 |
  s1\f |
  s1 * 2 |
  s2. s4\ff |
  s1 |
}

pedal = {
  s1 |
  % These tweaks may seem strange.  The first X-offset gets the pedal mark away
  % from the fermata so that the render engine will engrave it close to the
  % bottom of the staff.  The extra-offset is not seen by the render engine and
  % moves the fermata back where it was.
  s8.-\tweak X-offset 1.25 -\tweak extra-offset #'(-1.25 . 0) \sustainOn 
    s16\sustainOff s4 s8.\sustainOn s16\sustainOff s4 |
  \repeat unfold 6 {
    s8.\sustainOn s16\sustainOff s4 s8.\sustainOn s16\sustainOff s4 |
  }
  
  \barNumberCheck 9
  \repeat unfold 7 {
    s8.\sustainOn s16\sustainOff s4 s8.\sustainOn s16\sustainOff s4 |
  }
  \override SustainPedal.Y-offset = 3
  s8.\sustainOn s16\sustainOff s4 s8.\sustainOn s16\sustainOff s4 |
  
  \barNumberCheck 17
  s2.\sustainOn s8. s16\sustainOff |
  \override SustainPedal.Y-offset = 1
  s8.\sustainOn s16\sustainOff s4 \revert SustainPedal.Y-offset 
    s8.\sustainOn s16\sustainOff s4 |
  \revert SustainPedal.Y-offset
  \repeat unfold 6 {
    s8.\sustainOn s16\sustainOff s4 s8.\sustainOn s16\sustainOff s4 |
  }
  
  \barNumberCheck 25
  \repeat unfold 5 {
    s8.\sustainOn s16\sustainOff s4 s8.\sustainOn s16\sustainOff s4 |
  }
  s4\sustainOn s8 \override SustainPedal.Y-offset = 3 s\sustainOff s\sustainOn
    s\sustainOff s\sustainOn s\sustainOff |
  s8\sustainOn s\sustainOff s\sustainOn s\sustainOff s\sustainOn s\sustainOff
    s\sustainOn s\sustainOff|
  \revert SustainPedal.Y-offset
  s1 |
  
  \barNumberCheck 33
  s1 |
  \repeat unfold 6 {
    s8.\sustainOn s16\sustainOff s4 s8.\sustainOn s16\sustainOff s4 |
  }
  s2\sustainOn s8 s\sustainOff s\sustainOn s\sustainOff |
  
  \barNumberCheck 41
  s2\sustainOn s8. s16\sustainOff s4 |
  s1 * 4 |
  s4\sustainOn s2.\sustainOff |
}

preludeSixteenMusic = \score { 
  \keepWithTag #'layout
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 16"
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
  >>
  \layout {
    \context {
      \Score
      \override PhrasingSlur.details.free-head-distance = 0.5
    }
    \context {
      \Staff
      \consists "Mark_engraver"
    }
  }
}

preludeSixteenMidi = \book {
  \bookOutputName "prelude-op28-no16"
  \score { 
    \keepWithTag #'midi
    <<
      \new Staff = "upper" << \rightHand \dynamics \pedal >> 
      \new Staff = "lower" << \leftHand \dynamics \pedal >> 
    >>
    \midi {}
  }
}
