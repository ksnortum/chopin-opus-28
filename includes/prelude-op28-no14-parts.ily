%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Music %%%

global = {
  \time 2/2
  \key ef \minor
  \accidentalStyle piano
  
  % Group eight notes by twos
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1,1
}

unisonMusic = {
  ef,8 bf' gf cf ef, cf' d, cf' f, bf d, bf' |
  ef,8 bf' gf cf ef, c' f, c' af ef' bff df |
  gf,8 df' bf ef gf, e' a, e' c gf' df f |
  bf,8 f' df gf bf, gf' a, gf' c, f a, f' |
  bf,8 f' df gf bff, gf' af, gf' d f cf f |
  af,8 ff' cf d af d g, d' bf f' gf, ef' |
  f,8 df' g, b f b e, b' g df' e, c' |
  
  \barNumberCheck 9
  gf8 eff' bff c gf c f, c' af ef' f, df' |
  ef,8 cf' f, a ef a d, a' f bf gf bf |
  ef,8 bf' gf cf ef, cf' d, cf' f, bf d, bf' |
  ef,8 bf' gf cf g cf d, cf' gf bf f bf |
  ef,8 bf' gf cf ef, cf' f, df' a df f, df' |
  gf,8 df' bff eff gf, eff' bf ef gf, ff' g, f' |
  af,8 cf gf cf f, cf' ef, af d, gf ef gf |
  af,8 gf' ef gf af, gf' bf, gf' ef gf bf, gf' |
  
  \barNumberCheck 17
  ef8 bf' ef, cf' ef, df' ef, bf' ef, cf' ef, df' |
  ef,8 df' ef, cf' ef, bf' ef, af ef bf' ef, bf' |
}

rightHand = \relative {
  \clef bass
  \global
  \set Score.tempoHideNote = ##t 
  \tempo "Allegro" 2 = 84
  
  \scaleDurations 2/3 {
    ef8^\pesante bf' gf cf ef, cf' d, cf' f, bf d, bf' |
    \unisonMusic
  }
  ef,4 r r2 |
  \bar "|."
}

leftHand = \relative {
  \clef bass
  \global

  \scaleDurations 2/3 {
    ef,8 bf' gf cf ef, cf' d, cf' f, bf d, bf' |
    \unisonMusic
  }
  ef,,4 r r2 |
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  s2\p\< s\> |
  s2\< s\> |
  s1\< |
  s1 |
  s2\< s\> |
  s2\< s\> |
  s2.\> s4\< |
  s2.\> s4\< |
  
  \barNumberCheck 9
  s2\> s\< |
  s2\> s\cresc |
  s2\ff\< s\> |
  s2\< s\> |
  s1\< |
  s1\< |
  s4\! s2.\dim |
  s2 s\> |
  
  \barNumberCheck 17
  s1 * 2 |
  s1\pp |
}

preludeFourteenMusic = \score { 
  \keepWithTag #'layout
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 14"
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
  >>
  \layout {}
}

preludeFourteenMidi = \book {
  \bookOutputName "prelude-op28-no14"
  \score { 
    \keepWithTag #'midi
    <<
      \new Staff = "upper" << \rightHand \dynamics >>  
      \new Staff = "lower" << \leftHand \dynamics >> 
    >>
    \midi {}
  }
}
