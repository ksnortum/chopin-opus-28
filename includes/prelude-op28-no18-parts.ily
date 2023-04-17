%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.22.2"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurPositionA = \tweak positions #'(4 . 4) \etc
slurPositionB = \tweak positions #'(5 . 5) \etc

%%% Music %%%

global = {
  \time 2/2
  \key f \minor
  \accidentalStyle piano
  
  % Group sixteenth notes by fours
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1,1
}


rightHand = \relative {
  \clef treble
  \global
  \set Score.tempoHideNote = ##t 
  \tempo "Molto allegro" 4 = 92
  
  c'16-\slurPositionA ^( \dynamicInsideSlur df^\< a bf  g bf g' f\!  
    << 
      << { \dynamicInsideSlur f4. e8) } { s4^\> s16\! s s8 } >>
      \new Voice { \voiceTwo r8 <g, bf>[ q] r  } 
    >> |
  c16-\slurPositionA ^( \dynamicInsideSlur df^\< a bf  g bf g' f\!  
    << 
      << { \dynamicInsideSlur f4. e8) } { s4^\> s16\! s s8 } >>
      \new Voice { \voiceTwo r8 <g, bf>[ q] r  } 
    >> |
  c16^\( df a bf  g bf g' f  ds e bf' af  fs g df' c |
  a16 bf df' g,  c bf af g  f e g bf,  \tuplet 5/4 { b16 c df g, c\) } |
  bf16-\slurPositionB ^( \dynamicInsideSlur a^\< f gf  d ef c' bf \stemUp
    << 
      << { \dynamicInsideSlur bf4. a8) } { s4^\> s16\! s s8 } >>
      \new Voice { \voiceTwo r8 <c, ef>[ q] r  } 
    >> \stemNeutral |
  f16-\slurPositionB ^( \dynamicInsideSlur gf^\< d ef  c ef c' bf \stemUp
    << 
      << { \dynamicInsideSlur bf4. a8) } { s4^\> s16\! s s8 } >>
      \new Voice { \voiceTwo r8 <c, ef>[ q] r  } 
    >> \stemNeutral |
  f16( gf d ef  c ef c' bf  gs a gf' f  d ef df' c |
  \tuplet 22/16 { bf[ a ef' e, f gf c, df f ef df c bf a c e, f gf 
    c, f ef df] } |
  
  \barNumberCheck 9
  c8 bf) <f g bf df f>-. r  df''16( g, af a  c bf af g |
  f16 e) r8 <g, bf df e>-. r  af''16( bf, af' g  e df bf g |
  e16 f) r8 <f, c' f>-. r  c'''16( f, fs g \tuplet 5/4 { bf af f df c } |
  c16 b) r8 <af, b d af'> r \tuplet 17/16 { \ottava 1 af'''32( d, ef e g f d b 
    \ottava 0 g af f d b g af f d) } |
  b16( c f ef) <c ef af c>8-. r \tuplet 3/2 4 { <eff' eff'>( <df df'> <c c'> 
    q q q) } |
  b,16( c f e) <c e af c>8-. r \tuplet 3/2 { <eff' eff'>( <df df'> <c c'> }
    q16 q q q) |
  b,16( c g' f) <c f af c>8-. r b16( c bf' af) <c, ef af c>8-. r |
  <c ef af c>8-. <c' c'>-> <e, bf' df e>-. <df' df'>-> <f, af df f>-.
    <af' af'>-> <g, df' f g>-. <g' g'>-> |
    
  \barNumberCheck 17
  <cf,, cf'>8-. r \ottava 1 <f'' f'>(~ f'32[ ef df af  f ef df af  \ottava 0
    f ef df af  f ef df \clef bass af  f ef df af]) |
  \tag midi { 
    \repeat unfold 8 { f32 g } \tuplet 3/2 { e16 f df'  c g cf  gf bf f
      a f af } |
  }
  \tag layout { 
    f2(\trill \tuplet 3/2 8 { e16-.)[ f-. df'-.]  c-.[ g-. cf-.]
      gf-.[ bf-. f-.]  a-.[ f-. af-.] } |
  } 
  c,4-. r r2 |
  r2 <c' g' c> |
  <c f af c>1\fermata |
  \bar "|."
}

leftHand = \relative {
  \clef bass
  \global

  r2 r8 <c, df'>[ q] r |
  r2 r8 <c df'>[ q] r |
  r2 r8 bf''16( af  fs g df' c |
  a16 bf \clef treble df' g,  c bf af g  f e g bf,  
    \clef bass \tuplet 5/4 { b16 c df g, c } |
  bf16 a) r8 r4 r8 <f, gf'>[ q] r |
  r2 r8 <f gf'>[ q] r |
  r4 r8 c''16( bf  gs a \clef treble gf' f  \stemDown d ef df' c |
  \tuplet 22/16 { bf[ a ef' e, f gf c, df f ef \clef bass df c bf a c e, f gf 
    c, f ef df] } \stemNeutral |
  
  \barNumberCheck 9
  c8 bf) <bf, bf'>-. r  df''16( g, af a  c bf af g |
  f16 e) r8 <bf, bf'> r  \clef treble af'''16( bf, af' g  e df bf g |
  \clef bass e16 f) r8 <af,, af'> r \clef treble c'''16( f, fs g 
    \tuplet 5/4 { bf af f df c } |
  c16 b) r8 \clef bass <f,, f'>-. r \clef treble \tuplet 17/16 { af''''32( d, 
    ef e g f d b g af f d \clef bass b g af f d) } |
  b16( c f ef) <ef, af ef'>8-. r \tuplet 3/2 4 { <eff' eff'>( <df df'> <c c'> 
    q q q) } |
  b16( c f e) <e, c' e>8-. r \tuplet 3/2 { <eff' eff'>( <df df'> <c c'> }
    q16 q q q) |
  b16( c g' f) <f, c' af'>8-. r b16( c bf' af) <gf, af gf'>8-. r |
  <gf af gf'>8-. <c c'>-> <g g'>-. <df' df'>-. <af df af'>-. <af' af'>->
    <bf, df bf'>-. <g' g'>-> |
    
  \barNumberCheck 17
  <cf,, cf'>8-. r \clef treble <cf'' df f df'>4->\arpeggio r2 |
  \tag midi { 
    \repeat unfold 8 { f32 g } \tuplet 3/2 { e16 f df'  c g cf  gf bf f  
      a f af } |
  }
  \tag layout { 
    \clef bass f,,,2(\trill \tuplet 3/2 8 { e16-.)[ f-. df'-.]  c-.[ g-. cf-.]
      gf-.[ bf-. f-.]  a-.[ f-. af-.] } |
  }
  c,4-. r r2 |
  r2 <c' g'> |
  <f, f'>1\fermata |
}

dynamics = {
  s1\p |
  s1 |
  s16 s\< s8 s2. |
  s8 s16\! s\> s2 s8. s16\! |
  s1 * 2 |
  s4 s16 s\cresc s8 s2 |
  s2... s16\! |
  
  \barNumberCheck 9
  s8\> s\! s4\fz s2\cresc |
  s8 s\! s4\fz s\> s8. s16\! |
  s4 s\fz s\> s8. s16\! |
  s4 s\fz s\> s8.. s32\! |
  s2 \tuplet 3/2 { s4\> s8\! } s4 |
  s2 \tuplet 3/2 { s4\> s8\! } s4 |
  s1 * 2 |
  
  \barNumberCheck 17 
  s1 * 3 |
  s2 s\fff |
  s1 |
}

pedal = {
  s2 s4.\sustainOn s8\sustainOff |
  s2 s4.\sustainOn s8\sustainOff |
  s1 * 2 |
  s2 s4.\sustainOn s8\sustainOff |
  s2 s4.\sustainOn s8\sustainOff |
  s1 * 2 |
  
  \barNumberCheck 9
  \repeat unfold 4 { s4 s8\sustainOn s\sustainOff s2 | }
  s4 s8\sustainOn s\sustainOff s4 \tuplet 3/2 { s4\sustainOn s8\sustainOff } |
  s4 s8\sustainOn s\sustainOff s4 s8.\sustainOn s16\sustainOff |
  s4 s8\sustainOn s\sustainOff s4 s8\sustainOn s\sustainOff |
  s8\sustainOn s\sustainOff s8\sustainOn s\sustainOff s8\sustainOn s\sustainOff
    s8\sustainOn s\sustainOff |
  
  \barNumberCheck 17
  s2....\sustainOn s32\sustainOff |
  s1 * 2 |
  s2 s\sustainOn |
  s2..\sustainOff\sustainOn s8\sustainOff |
}

preludeEighteenMusic = \score { 
  \keepWithTag #'layout
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 18"
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
  >>
  \layout {}
}

preludeEighteenMidi = \book {
  \bookOutputName "prelude-op28-no18"
  \score { 
    \keepWithTag #'midi
    <<
      \new Staff = "upper" << \rightHand \dynamics \pedal >> 
      \new Staff = "lower" << \leftHand \dynamics \pedal >> 
    >>
    \midi {}
  }
}
