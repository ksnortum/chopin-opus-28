%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.22.2"
\language "english"

\include "global-variables.ily"

%%% Music %%%

global = {
  \time 3/4
  \key ef \major
  \accidentalStyle piano
}

rightHand = \relative {
  \clef treble
  \global
  \set Score.tempoHideNote = ##t 
  \tempo "Vivace" 4 = 172
  
  \partial 4 bf'4
  \tuplet 3/2 4 { \stemUp bf8^\sempreLegato bf, g'  ef' ef, bf'  g' g, ef' } |
  \scaleDurations 2/3 {
    \stemDown bf'8 bf, g'  ef' ef, bf'  g' ef, bf' |
    f'8 d, af'  ef' ef, af  c c, af' |
    c8 c, g'  bf bf, ef  g g, bf |
    \stemUp ef8 ef, a  d d, a'  ef' ef, a |
    g'8 g, bf  f' f, bf  d d, f |
    ef'8 ef, a  d d, a'  ef' ef, a |
    g'8 g, c  f f, af  c c, f |
    
    \barNumberCheck 9
    bf8 bf, g'  ef' ef, bf'  g' g, ef' |
    \stemDown bf'8 bf, g'  ef' ef, bf'  g' ef, bf' |
    f'8 d, af'  ef' ef, af  c c, af' |
    c8 c, g'  bf bf, ef  g g, ef' |
    gf8 gf, ef'  f f, ef'  fs fs, ef' |
    g8 g, d'  a' a, d  bf' bf, d |
    c'8 c, f  d' d, f  a a, f' |
    c'8 c, f  bf bf, f'  f f, bf |
    
    \barNumberCheck 17
    f'8 f, cf'  ef ef, bf'  f' df, af' |
    \stemUp af' df,, bf'  gf' df, bf'  df df, bf' |
    f'8  df, cf'  ef df, bf'  f' df, af' |
    af'8 df,, bf'  gf' df, bf'  f' df, bf' |
    ff'8 df, bf'  \stemDown bf' ff, df'  df' bf, e |
    d'8 bf, f'  ef' bf, g'  b gs, d' |
    c'8 a, ef'  d' a, f'  a f, c' |
    c'8  f,, ef'  bf' f, d'  f f, bf |
    
    \barNumberCheck 25
    \stemUp f'8 f, cf'  ef ef, bf'  f' df, af' |
    af'8 df,, bf'  gf' df, bf'  df df, bf' |
    f'8 df, cf'  ef df, bf'  f' df, af' |
    af'8 df,, bf'  gf' df, bf'  f' df, bf' |
    e8 cs, bf'  g' e, cs'  fs ef, c' |
    \stemDown a'8 fs, ef'  gs f, d'  b' gs, f' |
    bf8 g, e'  df' bf, g'  c a, fs' |
    ef' c, a'  d cf, af' 
  }
  f'8 r |
  
  \barNumberCheck 33
  \scaleDurations 2/3 {
    \stemUp bf,,8 bf, g'  ef' ef, bf'  g' g, ef' |
    \stemDown bf'8 bf, g'  ef' ef, bf'  g' ef, bf' |
    f'8 d, af'  ef' ef, af  c c, af' |
    c8 c, g'  bf bf, ef  g g, bf |
    \stemUp ef8 ef, a  d d, a' ef' ef, a |
    g'8 g, bf  f' f, bf  d d, f |
    ef'8 ef, a  d d, a'  ef' ef, a |
    g'8 g, c  f f, af  c c, f |
    
    \barNumberCheck 41
    bf8 bf, g'  ef' ef, bf'  g' g, ef' |
    \stemDown bf'8 bf, g'  ef' ef, bf'  g' ef, bf' |
    gf'8 ef, a  f' d, af'  e'  cs, g' |
    ef'8 c, gf'  d' b, f'  df' df, g |
    c8 c, f   d' c, f  ef' c, f |
    f'8 f, c'  g' g, c  f f, c' |
    c8 c, f  d' d, f  c' c, f |
    f8 f, c'  g' f, c'  d d, bf' |
    
   \barNumberCheck 49
   ef8 ef, bf'  bf' g, ef'  cf' g, ef' |
   bf'8 af, d  bff' af, d  af' af, d |
   g8 g, ef'  bf' g, ef'  c' g, ef' |
   bf'8 af, d  bff' af, d  af' af, d |
   g8 g, ef'  bf' bf, g'  ef' ef, bf' |
   g' d, b'  f' d, g  ef' c, g' |
   ef' c, gf'  d' b, fs'  c' c, fs |
   c'8 af, f'  bf g, c  af' f, d' |
   
   \barNumberCheck 57
   g8 ef, ef'  bf' g, ef'  cf' g, ef' |
   bf'8 af, d  bff' af, d  af' af, d |
   g8 ef, ef'  bf' g, ef'  c' g, ef' |
   bf'8 af, d  bff' af, d  af' af, d |
   g8 g, ef'  bf' bf, g'  ef' ef, bf' |
   g'8 d, b'  f' d, b'  e d, b' |
   e8 cs, a'  ef' c, a'  c a, ef' |
   c'8 a, ef'  bf' bf, ef  \stemUp d d, bf' |
   
   \barNumberCheck 65
   ef8 ef, bf'  bf' ef,, bf'  ef ef, bf' |
   \stemDown a'8 ef, bf'  ef ef, bf'  af' ef, bf' |
   ef8 ef, bf'  g' ef, bf'  ef ef, bf' |
   fs'8 ef, bf'  ef ef, bf'  g' ef, bf'|
  }
  ef4 r r |
  \ottava 1 <ef' bf' ef>4-> \ottava 0 r r |
  \stemUp <g,,, bf ef g>2.-> |
  \bar "|."
}

leftHand = \relative {
  \clef bass
  \global

  \partial 4 r4
  \tuplet 3/2 4 { ef,8 g' bf,  ef, g' bf,  ef, bf'' bf, } |
  \scaleDurations 2/3 {
    ef,8 ef'' g,  bf, g'' bf,  ef, bf'' bf, |
    ef,8 b'' b,  ef, c'' c,  ef, af' d, |
    ef,8 g' ef  bf g' ef  ef, ef' g, |
    f,8 c'' f,  c c' f,  f, c'' f, |
    bf,8 ef' f,  d d' f,  bf, bf' f |
    f,8 c'' f,  c b' f  f, c'' f, |
    bf,8 ef' af,  f d' af  bf, af' d, |
    
    \barNumberCheck 9
    ef,8 g' bf,  ef, g' bf,  ef, bf'' bf, |
    ef,8 ef'' g,  bf, g'' bf,  ef, bf'' bf, |
    ef,8 b'' b,  ef, c'' c,  ef, af' d, |
    ef,8 g' ef  bf g' ef  c, ef' g, |
    cf,8 ef' a,  ef ef' a,  cf, ef' a, |
    bf,8 d' g, a, d' fs,  g, d'' g, |
    f,8 bf'' ef,  f, bf' ef,  c f ef |
    bf,8 ef' f,  bf, d' f,  bf, df' f, |
    
    \barNumberCheck 17
    af,8 cf' f,  df cf' f,  \stemDown df, cf'' f, |
    gf,8 bf' gf  df bf' gf  gf, bf' df, |
    df,8 cf'' f,  af, cf' f,  df, cf'' f, |
    gf,8 bf' gf  df bf' gf  gf, bf' df, |
    gf,8 bf' df,  gf, df'' gf,  gf, e'' bf |
    f,8 f'' bf,  f g' bf,  f f' b, |
    f8 f' c  f, f' ef  f, ef' a, |
    bf,8 ef' f,  bf, d' f,  bf, df' f, |
    
    \barNumberCheck 25
    af,8 cf' f,  df cf' f,  df, cf'' f, |
    gf,8 bf' gf  df bf' gf  gf, bf' df, |
    df,8 cf'' f,  af, cf' f,  df, cf'' f, |
    gf,8 bf' gf  df bf' gf  gf, bf' df, |
    g,8 bf' e,  bf cs' e,  a, c' ef, |
    c8 ef' fs,  b, d' f,  d f' gs, |
    cs,8 e' g,  e g' bf,  ds, fs' a, |
    fs8 a' c,  f, af' cf,
  }
  bf8 r |
  
  \barNumberCheck 33
  \scaleDurations 2/3 {
    \stemUp ef,,8 g' bf,  ef, g' bf,  ef, bf'' bf, |
    \stemDown ef,8 ef'' g,  bf, g'' bf,  ef, bf'' bf, |
    ef,8 b'' b,  ef, c'' c,  ef, af' d, |
    ef,8 g' ef  bf g' ef  ef, ef' g, |
    f,8 c'' f,  c c' f,  f, c'' f, |
    bf,8 ef' f,  d d' f,  bf, bf' f |
    f,8 c'' f,  c b' f  f, c'' f, |
    bf,8 ef' af,  f d' af  bf, af' d, |
    
    \barNumberCheck 41
    \stemUp ef,8 g' bf,  ef, g' bf,  ef, bf'' bf, |
    \stemDown ef,8 ef'' g,  bf, g'' bf,  ef, bf'' bf, |
    a,8 c' gf  b, d' af  cs, e' bf |
    ef,8 gf' c,  f, af' d,  g, bf' e, |
    af,8 af' f  c af' f  af, af' f |
    \stemUp \clef treble f,8 ef'' af,  ef ef' af,  c, ef' af, |
    \clef bass a,,8 \clef treble a'' f  c a' f  f, a' ef |
    \stemDown \clef bass bf, ef' af,  f d' af  bf, bf' af |
    
    \barNumberCheck 49
    \stemUp ef,8 g' bf,  ef, bf'' bf,  ef, bf'' bf, |
    ef,8 af' bf,  ef, bf'' bf,  ef, bf'' bf, |
    ef, bf'' bf,  ef, bf'' bf,  ef, bf'' bf, |
    ef, af' bf,  ef, bf'' bf,  ef, bf'' bf, |
    ef, bf'' bf,  ef, bf'' bf,  g bf' ef, |
    \stemDown g, f'' b,  d, f' b,  c, ef' g, |
    a,8 ef'' gf,  ef ef' fs,  a, ef'' fs, |
    bf,8 d' af  f d' af  bf, bf' af |
    
    \barNumberCheck 57
    \stemUp ef,8 g' bf,  ef, bf'' bf,  ef, bf'' bf, |
    ef,8 af' bf,  ef, bf'' bf,  ef, bf'' bf, |
    ef, bf'' bf,  ef, bf'' bf,  ef, bf'' bf, |
    ef,8 af' bf,  ef, bf'' bf,  ef, bf'' bf, |
    ef, bf'' bf,  ef, bf'' bf,  g bf' ef, |
    \stemDown g,,8 b'' f  g, b' f  gs, b' e, |
    a,8 cs' e,  a, c' f,  a, ef'' fs, |
    bf,8 ef' fs,  bf, ef' g,  \stemUp bf,, af'' bf, |
    
    \barNumberCheck 65
    ef,8 g' bf,  ef, bf'' bf,  ef,8 g' bf, |
    ef, bf'' bf,  ef,8 g' bf,  ef, bf'' bf, |
    ef,8 g' bf,  ef, bf'' bf,  ef,8 g' bf, |
    ef, bf'' bf,  ef,8 g' bf,  ef, bf'' bf, |
  }
  ef,4 r r |
  \stemNeutral \clef treble <g'' bf ef g>4-> r r |
  \clef bass <ef,, bf' ef>2.-> |
}

dynamics = {
  \override TextScript.Y-offset = -0.5

  \partial 4 s4\p 
  s2.\< |
  s2 s8. s16\! |
  s2\> s8. s16\! |
  s2\> s8. s16\! |
  s2\< s8. s16\! |
  s2\> s8. s16\! |
  s2\< s8. s16\! |
  s2\> s8. s16\! |
  
  \barNumberCheck 9
  s2.\< |
  s2 s8. s16\! |
  s2\> s8. s16\! |
  s2\> s8. s16\! |
  s2.\< |
  s2. |
  s4 s8 s\! s4 |
  s2\> s8. s16\! |
  
  \barNumberCheck 17
  s2\p\< s8. s16\! |
  s2\> s8. s16\! |
  s2\< s8. s16\! |
  s2\> s8. s16\! |
  s2\< s8. s16\! |
  \repeat unfold 3 { s2\> s8. s16\! | }
  
  \barNumberCheck 25
  s2\< s8. s16\! |
  s2\> s8. s16\! |
  s2\< s8. s16\! |
  s2\> s8. s16\! |
  s2.\cresc |
  s2. * 2 |
  s2 s4\! |
  
  \barNumberCheck 33
  s2.\p\< |
  s4. s4 s16 s\! |
  s2\> s8. s16\! |
  s2\> s8. s16\! |
  s2\< s8. s16\! |
  s2\> s8. s16\! |
  s2\< s8. s16\! |
  s2\> s8. s16\! |
  
  \barNumberCheck 41
  s2.\< |
  s4. s4 s16 s\! |
  s2.^\crescm |
  s2. |
  s2.\< |
  s8. s16\! s4\> s8. s16\! |
  s8.\< s16\! s4\> s8. s16\! |
  s4\< s8 s\> s8. s16\! |
  
  \barNumberCheck 49
  s2\p\< s8. s16\! |
  s2\> s8. s16\! |
  s2\< s8. s16\! |
  s2\< s8. s16\! |
  s2\< s8. s16\! |
  s2.\> |
  s2 s8. s16\! |
  s2\> s8. s16\! |
  
  \barNumberCheck 57
  s2\< s8. s16\! |
  s2\> s8. s16\! |
  s2\< s8. s16\! |
  s2\> s8. s16\! |
  s2.\< |
  s2 s8. s16\! |
  s2.\> |
  s2 s4\! |
  
  \barNumberCheck 65
  s4\p s2\cresc |
  s2. |
  s2 s8. s16\! |
  s2.\dim |
  s8 s\! s2 |
  s2.\ff |
  s2. |
}

pedal = {
  \partial 4 s4
  s2.\sustainOn |
  s2 s8. s16\sustainOff |
  s4\sustainOn s\sustainOff\sustainOn s8.\sustainOff\sustainOn s16\sustainOff |
  s4\sustainOn s\sustainOff\sustainOn s8. s16\sustainOff |
  s4\sustainOn s\sustainOff\sustainOn s8.\sustainOff\sustainOn s16\sustainOff |
  s4\sustainOn s\sustainOff\sustainOn s8. s16\sustainOff |
  s4\sustainOn s16 s8.\sustainOff s\sustainOn s16\sustainOff |
  s4\sustainOn s\sustainOff\sustainOn s8. s16\sustainOff |
  
  \barNumberCheck 9
  s2.\sustainOn |
  s2 s8. s16\sustainOff |
  s4\sustainOn s\sustainOff\sustainOn s8.\sustainOff\sustainOn s16\sustainOff |
  s4\sustainOn s4 s8.\sustainOff\sustainOn s16\sustainOff |
  s4\sustainOn s\sustainOff\sustainOn s8.\sustainOff\sustainOn s16\sustainOff |
  s4\sustainOn s\sustainOff\sustainOn s8.\sustainOff\sustainOn s16\sustainOff |
  s4\sustainOn s4 s8.\sustainOff\sustainOn s16\sustainOff |
  s4\sustainOn s\sustainOff\sustainOn s8.\sustainOff\sustainOn s16\sustainOff |
  
  \barNumberCheck 17
  s4\sustainOn s4 s8.\sustainOff\sustainOn s16\sustainOff |
  \tag layout { s2\sustainOn s8. s16\sustainOff | }
  \tag midi   { s8.\sustainOn s16\sustainOff s4\sustainOn s8. 
                s16\sustainOff | }
  s4\sustainOn s\sustainOff s8.\sustainOn s16\sustainOff |
  s4\sustainOn s4 s8.\sustainOff\sustainOn s16\sustainOff |
  s2\sustainOn s8. s16\sustainOff |
  \repeat unfold 3 {
    s4\sustainOn s\sustainOff\sustainOn s8.\sustainOff\sustainOn 
      s16\sustainOff |
  }
  
  \barNumberCheck 25
  \repeat unfold 4 {
    s4\sustainOn s4 s8.\sustainOff\sustainOn s16\sustainOff |
  }
  s2\sustainOn s4\sustainOff\sustainOn |
  s4 s\sustainOff\sustainOn s8. s16\sustainOff | 
  s2\sustainOn s4\sustainOff\sustainOn |
  s4 s8.\sustainOff\sustainOn s16\sustainOff s4 |
  
  \barNumberCheck 33
  s2.\sustainOn |
  s2 s8. s16\sustainOff |
  s4\sustainOn s\sustainOff\sustainOn s8.\sustainOff\sustainOn s16\sustainOff |
  s4\sustainOn s\sustainOff\sustainOn s8. s16\sustainOff |
  s4\sustainOn s\sustainOff\sustainOn s8.\sustainOff\sustainOn s16\sustainOff |
  s4\sustainOn s\sustainOff\sustainOn s8. s16\sustainOff |
  s4\sustainOn s16 s8.\sustainOff s\sustainOn s16\sustainOff |
  s4\sustainOn s\sustainOff\sustainOn s8. s16\sustainOff |
  
  \barNumberCheck 41
  s2.\sustainOn |
  s2 s8. s16\sustainOff |
  s4\sustainOn s\sustainOff\sustainOn s8.\sustainOff\sustainOn s16\sustainOff |
  s4\sustainOn s\sustainOff\sustainOn s8.\sustainOff\sustainOn s16\sustainOff |
  \repeat unfold 3 { s2\sustainOn s8. s16\sustainOff | }
  s8.\sustainOn s16\sustainOff s4 s8.\sustainOn s16\sustainOff |
  
  \barNumberCheck 49
  s2\sustainOn s8. s16\sustainOff |
  s4\sustainOn s4\sustainOff\sustainOn s8. s16\sustainOff |
  s2\sustainOn s8. s16\sustainOff |
  s4\sustainOn s4\sustainOff\sustainOn s8. s16\sustainOff |
  s2\sustainOn s8. s16\sustainOff |
  s2\sustainOn s8.\sustainOff\sustainOn s16\sustainOff |
  s4\sustainOn s\sustainOff\sustainOn s8.\sustainOff\sustainOn s16\sustainOff |
  s2\sustainOn s8.\sustainOff\sustainOn s16\sustainOff |
  
  \barNumberCheck 57
  s2\sustainOn s8. s16\sustainOff |
  s4\sustainOn s4\sustainOff\sustainOn s8. s16\sustainOff |
  s2\sustainOn s8. s16\sustainOff |
  s4\sustainOn s4\sustainOff\sustainOn s8. s16\sustainOff |
  s2\sustainOn s8. s16\sustainOff |
  s2\sustainOn s8.\sustainOff\sustainOn s16\sustainOff |
  s4\sustainOn s\sustainOff\sustainOn s8.\sustainOff\sustainOn s16\sustainOff |
  s4\sustainOn s\sustainOff\sustainOn s8.\sustainOff\sustainOn s16\sustainOff |
  
  \barNumberCheck 65
  s2\sustainOn s8. s16\sustainOff |
  s2\sustainOn s4\sustainOff\sustainOn |
  s4 s4\sustainOff\sustainOn s8. s16\sustainOff |
  s2\sustainOn s4\sustainOff\sustainOn |
  \tag layout {
    s2. * 2 |
    s2 s4\sustainOff |
  }
  \tag midi {
    s2.\sustainOff |
    s2. * 2 |
  }
}

preludeNinteenMusic = \score { 
  \keepWithTag #'layout
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 19"
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
  >>
  \layout {}
}

preludeNinteenMidi = \book {
  \bookOutputName "prelude-op28-no19"
  \score { 
    \keepWithTag #'midi
    <<
      \new Staff = "upper" << \rightHand \dynamics \pedal >> 
      \new Staff = "lower" << \leftHand \dynamics \pedal >> 
    >>
    \midi {}
  }
}
