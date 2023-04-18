%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

shapeArpeggio = 
  \tweak positions #'(-17 . -1) 
  \tweak extra-spacing-width #'(-1 . 0)
  \tweak X-offset -2
  \tweak vertical-skylines ##f
  \etc

%%% Music %%%

global = {
  \time 4/4
  \key fs \minor
  \accidentalStyle piano
}

rightHandUpper = \relative {
  \voiceOne
  \magnifyMusic #2/3 {
    \once \normalsize cs'32( cs' gs b a fs \once \normalsize d d' 
      \once \normalsize cs, cs' gs b a gs \once \normalsize fs fs'
      \once \normalsize fs, fs' as, cs b gs \once \normalsize es es'
      \once \normalsize a, a' bs, d cs b \once \normalsize gs gs') |
    \once \normalsize cs,,32( cs' gs b a fs \once \normalsize d d' 
      \once \normalsize cs, cs' gs b a gs \once \normalsize fs fs'
      \once \normalsize fs, fs' as, cs b gs \once \normalsize es es'
      \once \normalsize a, a' bs, d cs b \once \normalsize gs gs') |
    \once \normalsize cs,32( cs' gs b a fs \once \normalsize ds ds' 
      \once \normalsize cs, cs' es, gs fs ds \once \normalsize bs bs')
      \once \normalsize b,( b' fs a g e \once \normalsize cs cs'
      \once \normalsize b, b' ds, fs e cs \once \normalsize as as') |
    \once \normalsize a,32( a' d, f ef c \once \normalsize b b'
      \once \normalsize a, a' cs, e d b \once \normalsize gs gs'
      \once \normalsize fs, fs' as, cs b gs \once \normalsize es es'
      \once \normalsize d, d' fss, a gs e \once \normalsize cs cs')
    \once \normalsize cs,32( cs' gs b a fs \once \normalsize d d' 
      \once \normalsize cs, cs' gs b a gs \once \normalsize fs fs'
      \once \normalsize fs, fs' as, cs b gs \once \normalsize es es'
      \once \normalsize a, a' bs, d cs b \once \normalsize gs gs') |
    \once \normalsize cs,,32( cs' gs b a fs \once \normalsize d d' 
      \once \normalsize cs, cs' gs b a gs \once \normalsize fs a'
      \once \normalsize a, a' cs, e d b \once \normalsize gs gs'
      \once \normalsize cs, cs' ds, fs e d \once \normalsize b b') |
    \once \normalsize e,32( e' b d c a \once \normalsize fs fs'
      \once \normalsize e, e' gs, b a fs \once \normalsize ds ds')
      \once \normalsize d,( d' g, bf af f \once \normalsize e e'
      \once \normalsize d, d' fs, a g e \once \normalsize cs cs') |
    \once \normalsize c,32( c' f, af gf ef \once \normalsize d d'
      \once \normalsize c,32 c' e, g f d \once \normalsize b b')
      \once \normalsize cf,32( cf' ef, gf ff df \once \normalsize bf bf'
      \once \normalsize bf, bf' ef, gf ff df \once \normalsize bf bf') |
      
    \barNumberCheck 9
    \once \normalsize bf,32( bf' e, g f d \once \normalsize a a'
      \once \normalsize bff, bff' df, ff eff cf \once \normalsize af af'
      \once \normalsize af, af' cs, ef d b \once \normalsize g g'
      \once \normalsize g, g' d f ef d \once \normalsize c c') |
    \once \normalsize c,32( c' fs, af g ef \once \normalsize b b'
      \once \normalsize cf, cf' ef, fs e df \once \normalsize bf bf'
      \once \normalsize bf, bf' ds, f e cs \once \normalsize a a'
      \once \normalsize a, a' e g f e \once \normalsize d d') |
    \once \normalsize d,32( d' e, g f ef \once \normalsize c c'
      \once \normalsize c, c' e, g f d \once \normalsize bf bf')
      \once \normalsize bf,( bf' cs, ef d c \once \normalsize a a'
      \once \normalsize a, a' cs, ef d b \once \normalsize g g') |
    \once \normalsize g,32( g' a, c bf af \once \normalsize f f'
      \once \normalsize e, e' a, c bf af \once \normalsize f f'
      \once \normalsize f, f' a, cf bf af \once \normalsize f f'
      \once \normalsize gf, gf' d f ef bf \once \normalsize gf gf') |
    \once \normalsize gf,32( gf' g, bf af gf \once \normalsize ff ff' 
      \once \normalsize ff, ff' g, bf af ff \once \normalsize af, af'
      \once \normalsize cf, cf' f, af gf ef \once \normalsize cf cf'
      \once \normalsize bf, bf' f af gf ef \once \normalsize cf cf') |
    \once \normalsize c,32( c' f, af gf ff \once \normalsize c c' 
      \once \normalsize df, df' f, af gf ff \once \normalsize d d'
      \once \normalsize d, d' f, af gf ff \once \normalsize d d'
      \once \normalsize ef, ef' bf df cf gf \once \normalsize ef ef') |
    \once \normalsize ef,32( ef' af, df cf af \once \normalsize ef ef' 
      \once \normalsize d, d' af df cf af \once \normalsize ef ef'
      \once \normalsize f, f' bf, ef d bf \once \normalsize f f'
      \once \normalsize gf, gf' bf, ef d bf \once \normalsize f f') |
    \once \normalsize ef,32( ef' af, df cf af \once \normalsize ef ef'
      \once \normalsize d, d' af df cf af \once \normalsize ef ef'
      \once \normalsize f, f' bf, ef d bf \once \normalsize f f'
      \once \normalsize bf, bf' e, gf f d \once \normalsize bf bf') |
      
    \barNumberCheck 17
    \once \normalsize ef,,32( ef' af, df cf af \once \normalsize ef ef' 
      \once \normalsize d, d' af df cf af \once \normalsize ef ef'
      \once \normalsize f, f' bf, ef d bf \once \normalsize f f'
      \once \normalsize gf, gf' bf, ef d bf \once \normalsize f f') |
    \once \normalsize ef,32( ef' af, df cf af \once \normalsize ef ef'
      \once \normalsize d, d' af df cf af \once \normalsize ef ef'
      \once \normalsize f, f' bf, ef d bf \once \normalsize f f'
      \once \normalsize es, es' bs d cs b \once \normalsize cs, cs') |
    \once \normalsize cs,32( cs' gs b a fs \once \normalsize d d' 
      \once \normalsize cs, cs' gs b a gs \once \normalsize fs fs'
      \once \normalsize fs, fs' as, cs b gs \once \normalsize es es'
      \once \normalsize a, a' bs, d cs b \once \normalsize gs gs') |
    \once \normalsize cs,,32( cs' gs b a fs \once \normalsize d d' 
      \once \normalsize cs, cs' gs b a gs \once \normalsize fs a'
      \once \normalsize a, a' cs, e d b \once \normalsize gs gs'
      \once \normalsize cs, cs' ds, fs e d \once \normalsize b b') |
    \once \normalsize b,( b' ds, fs e cs \once \normalsize as as' 
      \once \normalsize d, d' es, g fs e \once \normalsize cs cs') 
      \once \normalsize cs,( cs' es, gs fs ds \once \normalsize bs bs' 
      \once \normalsize es, es' gs, b a gs \once \normalsize fs fs') |
    \once \normalsize gs,32( gs' d f ef c \once \normalsize a a')
      \once \normalsize gs,( gs' d f ef c \once \normalsize a a')
      \once \normalsize gs,( gs' cs, e d c \once \normalsize a a')
      \once \normalsize gs,( gs' cs, e d c \once \normalsize a a') |
    \once \normalsize a,32( a' es gs fs cs \once \normalsize a a'
      \once \normalsize gs, gs' ds fs e cs \once \normalsize gs gs'
      \once \normalsize e, e' b d cs a \once \normalsize e e'
      \once \normalsize cs, cs' gs b a fs \once \normalsize cs cs') |
    \once \normalsize gs,32( gs' ds fs e cs \once \normalsize gs gs' 
      \once \normalsize fs, fs' cs e d a \once \normalsize fs fs'
      \once \normalsize e, e' b d cs a \once \normalsize e e'
      \once \normalsize d, d' a cs b g \once \normalsize d d') |
      
    \barNumberCheck 25
    \once \normalsize cs,32( cs' gs b a fs \once \normalsize cs cs'
      \once \normalsize cs, cs' gs b a fs \once \normalsize cs cs'
      \once \normalsize cs, cs' gs b a fs \once \normalsize cs cs'
      \once \normalsize cs, cs' gs b a fs \once \normalsize cs cs') |
    \once \normalsize cs,32( cs' fss, a gs fs \once \normalsize cs cs'
      \once \normalsize cs, cs' fss, a gs fs \once \normalsize cs cs'
      \once \normalsize cs, cs' fss, a gs es \once \normalsize cs cs'
      \once \normalsize cs, cs' fss, a gs es \once \normalsize cs cs') |
    \once \normalsize cs,32( cs' gs b a fs \once \normalsize cs cs'
      \once \normalsize cs, cs' gs b a fs \once \normalsize cs cs'
      \once \normalsize cs, cs' gs b a fs \once \normalsize cs cs'
      \once \normalsize cs, cs' gs b a fs \once \normalsize cs cs') |
    \once \normalsize d,32( d' as cs b fs \once \normalsize d d'
      \once \normalsize d, d' as cs b fs \once \normalsize d d'
      \once \normalsize d, d' as cs b fs \once \normalsize d d'
      \once \normalsize fs, fs' as, cs b fs \once \normalsize d d') |
    \once \normalsize cs,32( cs' gs b as fs \once \normalsize cs cs'
      \once \normalsize cs, cs' gs b as fs \once \normalsize cs cs'
      \once \normalsize cs, cs' gs b as fs \once \normalsize cs cs'
      \once \normalsize cs, cs' gs b as fs \once \normalsize cs cs') |
    \once \normalsize ds,32( ds' as cs b fs \once \normalsize ds ds'
      \once \normalsize ds, ds' as cs b fs \once \normalsize ds ds'
      \once \normalsize ds, ds' as cs b fs \once \normalsize ds ds'
      \once \normalsize fs, fs' as, cs b fs \once \normalsize ds ds') |
    \once \normalsize cs,32( cs' gs b as fs \once \normalsize cs cs'
      \once \normalsize cs, cs' gs b as fs \once \normalsize cs cs'
      \once \normalsize cs, cs' gs b as fs \once \normalsize cs cs'
      \once \normalsize cs, cs' gs b as fs \once \normalsize cs cs') |
    \once \normalsize cs,32( cs' gs b a fs \once \normalsize cs cs'
      \once \normalsize cs, cs' gs b a fs \once \normalsize cs cs'
      \once \normalsize cs, cs' gs b a fs \once \normalsize cs cs'
      \once \normalsize cs, cs' gs b a fs \once \normalsize cs cs') |
  }
  
  \barNumberCheck 33
  \oneVoice
  \hide MetronomeMark
  \tempo "Lento" 4 = 50
  <cs, e cs'>2( <d g b>4 <b cs es>) |
  \slashedGrace { es8 \shapeArpeggio \arpeggio } <cs fs>1\fermata |
  \bar "|."
}

rightHandLower = \relative {
  \voiceTwo
  cs'8. d16 cs8. fs16 fs8. es16 a8. gs16 | 
  cs,8. d16 cs8. fs16 fs8. es16 a8. gs16 | 
  cs8. ds16 cs8. bs16 b8. cs16 b8. as16 |
  a8. b16 a8. gs16 fs8. es16 d8. cs16 |
  cs8. d16 cs8. fs16 fs8. es16 a8. gs16 |
  cs,8. d16 cs8. fs16 a8. gs16 cs8. b16 |
  e8. fs16 e8. ds16 d8. e16 d8. cs16 |
  c8. d16 c8. b16 cf8. bf16 bf8. bf16 |
  
  \barNumberCheck 9
  bf8. a16 bff8. af16 af8. g16 g8. c16 |
  c8. b16 cf8. bf16 bf8. a16 a8. d16 |
  d8. c16 c8. bf16 bf8. a16 a8. g16 |
  g8. f16 e8. f16 f8. f16 gf8. gf16 |
  gf8. ff16 ff8. af,16 cf8. cf16 bf8. cf16 |
  c8. c16 df8. d16 d8. d16 ef8. ef16 |
  ef8. ef16 d8. ef16 f8. f16 gf8. f16 |
  ef8. ef16 d8. ef16 f8. f16 bf8. bf16 |
  
  \barNumberCheck 17
  ef,8. ef16 d8. ef16 f8. f16 gf8. f16 |
  ef8. ef16 d8. ef16 f8.^\pocoRitenuto f16 es8. cs16 |
  cs8.^\moltoAgitato d16 cs8. fs16 fs8. es16 a8. gs16 |
  cs,8. d16 cs8. fs16 a8. gs16 cs8. b16 |
  b8. as16 d8. cs16 cs8. bs16 es8. fs16 |
  gs8. a16 gs8. a16 gs8. a16 gs8. a16 |
  a8. a16 gs8. gs16 e8. e16 cs8. cs16 |
  gs8. gs16 fs8. fs16 e8. e16 d8. d16 |
  
  \barNumberCheck 25
  \repeat unfold 3 { cs8. cs16 cs8. cs16 cs8. cs16 cs8. cs16 | }
  d8. d16 d8. d16 d8. d16 fs8. d16 |
  cs8. cs16 cs8. cs16 cs8. cs16 cs8. cs16 |
  ds8. ds16 ds8. ds16 ds8. ds16 fs8. ds16 |
  \repeat unfold 2 { cs8. cs16 cs8. cs16 cs8. cs16 cs8. cs16 | }
}

rightHand = <<
  \clef treble
  \global
  \mergeDifferentlyDottedOn
  \set Score.tempoHideNote = ##t 
  \tempo "Molto agitato" 4 = 90
  \new Voice \rightHandUpper
  \new Voice \rightHandLower
>>

leftHand = \relative {
  \clef bass
  \global
  \omit TupletBracket
  \tuplet 3/2 { a16( cs, fs } fs,8) \tuplet 3/2 { a'16( cs, fs } a,8) 
    \tuplet 3/2 { d'16( gs, b } d,8) \tuplet 3/2 { cs'16( es, b' } cs,8) |
  \tuplet 3/2 { a'16( cs, fs } fs,8) \tuplet 3/2 { a'16( cs, fs } a,8) 
    \tuplet 3/2 { d'16( gs, b } d,8) \tuplet 3/2 { cs'16( es, b' } cs,8) |
  \omit TupletNumber
  \tuplet 3/2 { a''16( ds, fs } a,8) \tuplet 3/2 { gs'16( ds fs } gs,8)
    \tuplet 3/2 { g'16( cs, e } g,8) \tuplet 3/2 { fs'16( cs e } fs,8) |
  \tuplet 3/2 { f'16( c ef } f,8) \tuplet 3/2 { f'16( b, d } f,8)
    \tuplet 3/2 { d'16( gs, b } d,8) \tuplet 3/2 { b'16( cs, es } cs,8) |
  \tuplet 3/2 { a''16( cs, fs } fs,8) \tuplet 3/2 { a'16( cs, fs } a,8) 
    \tuplet 3/2 { d'16( gs, b } d,8) \tuplet 3/2 { cs'16( es, b' } cs,8) |
  \tuplet 3/2 { a'16( cs, fs } fs,8) \tuplet 3/2 { a'16( cs, fs } a,8) 
    \tuplet 3/2 { f''16( b, d } f,8) \tuplet 3/2 { e'16( gs, d' } e,8) |
  \clef treble
  \tuplet 3/2 { c''16( fs, a } c,8) \tuplet 3/2 { b'16( fs a } b,8)
    \tuplet 3/2 { bf'16( f af } bf,8) \tuplet 3/2 { a'16( e g } a,8) |
  \tuplet 3/2 { af'16( ef gf } af,8) \tuplet 3/2 { g'16( d f } g,8)
    \tuplet 3/2 { g'16( df ff } g,8) \tuplet 3/2 { gf'16( df ff } gf,8) |
  
  \barNumberCheck 9
  \clef bass
  \tuplet 3/2 { f'16( bf, d } f,8) \tuplet 3/2 { f'16( b, d } f,8)
    \tuplet 3/2 { f'16( g, b } f8) \tuplet 3/2 { ef'16( g, c } f,8) |
  \tuplet 3/2 { g'16( c, ef } f,8) \tuplet 3/2 { g'16( df e } f,8)
    \tuplet 3/2 { g'16( a, cs } f,8) \tuplet 3/2 { f'16( a, d } f,8) |
  \tuplet 3/2 { f'16( a, ef' } f,8) \tuplet 3/2 { d'16( f, bf } bf,8)
    \tuplet 3/2 { d'16( fs, c' } d,8) \tuplet 3/2 { bf'16( d, g } g,8) |
  \tuplet 3/2 { bf'16( d, af' } bf,8) \tuplet 3/2 { bf'16( d, af' } bf,8)
    \tuplet 3/2 { af'16( bf, d } ef,8) \tuplet 3/2 { gf'16( bf, ef } ef,8) |
  \tuplet 3/2 { af'16( af, df } ff,8) \tuplet 3/2 { af'16( af, df } ff,8)
    \tuplet 3/2 { gf'16( cf, ef } gf,8) \tuplet 3/2 { gf'16( cf, ef } gf,8) |
  \tuplet 3/2 { gf'16( bf, ff' } gf,8) \tuplet 3/2 { gf'16( bf, ff' } gf,8) 
    \tuplet 3/2 { ff'16( gf, bf } cf,8) \tuplet 3/2 { ef'16( gf, cf } cf,8) |
  \tuplet 3/2 { af''16( cf, ef } f,8) \tuplet 3/2 { af'16( cf, ef } f,8)
    \tuplet 3/2 { d''16( f, bf } bf,8) \tuplet 3/2 { d'16( f, bf } bf,8) |
  \tuplet 3/2 { af'16( cf, ef } f,8) \tuplet 3/2 { af'16( cf, ef } f,8)
    \tuplet 3/2 { d''16( f, bf } bf,8) \tuplet 3/2 { d'16( f, bf } bf,8) |
    
  \barNumberCheck 17
  \tuplet 3/2 { af'16( cf, ef } f,8) \tuplet 3/2 { af'16( cf, ef } f,8)
    \tuplet 3/2 { d''16( f, bf } bf,8) \tuplet 3/2 { d'16( f, bf } bf,8) |
  \tuplet 3/2 { af'16( cf, ef } f,8) \tuplet 3/2 { af'16( cf, ef } f,8)
    \tuplet 3/2 { d''16( f, bf } bf,8) \tuplet 3/2 { b'16( cs, es } gs,8) |
  \tuplet 3/2 { a'16( cs, fs } fs,8) \tuplet 3/2 { a'16( cs, fs } a,8) 
    \tuplet 3/2 { d'16( gs, b } d,8) \tuplet 3/2 { cs'16( es, b' } cs,8) | 
  \tuplet 3/2 { a'16( cs, fs } fs,8) \tuplet 3/2 { a'16( cs, fs } a,8)
    \tuplet 3/2 { f''16( b, d } f,8) \tuplet 3/2 { e'16( gs, d' } e,8) |
  \tuplet 3/2 { g'16( cs, e } g,8) \tuplet 3/2 { fs'16( as, e' } fs,8)
    \clef treble
    \tuplet 3/2 { a'16( ds, fs } a,8) \tuplet 3/2 { bs'16( fs a } bs,8) |
  \tuplet 3/2 { fs''16( a, c } ef,8) \tuplet 3/2 { fs'16( a, c } ef,8) 
    \tuplet 3/2 { fs'16( a, c } d,8) \tuplet 3/2 { fs'16( a, c } d,8) |
  \tuplet 3/2 { fs'16( a, cs } cs,8) \tuplet 3/2 { e'16( gs, cs } cs,8)
    \tuplet 3/2 { cs'16( e, a } a,8) \tuplet 3/2 { a'16( cs, fs } fs,8) |
  \clef bass
  \tuplet 3/2 { e'16( gs, cs } cs,8) \tuplet 3/2 { d'16( fs, a } d,8)
    \tuplet 3/2 { cs'16( e, a } a,8) \tuplet 3/2 { b'16( d, g } b,8) |
    
  \barNumberCheck 25
  \tuplet 3/2 { a'16^>( a, cs } cs,8) \tuplet 3/2 { a''16^>( a, cs } cs,8)
    \tuplet 3/2 { gs''16^>( a, cs } cs,8) \tuplet 3/2 { fs'16^>( a, cs } 
    cs,8) |
  \tuplet 3/2 { fs'16^>( gs, cs } cs,8) \tuplet 3/2 { fs'16^>( gs, cs } cs,8)
    \tuplet 3/2 { es'16^>( gs, cs } cs,8) \tuplet 3/2 { es'16^>( gs, cs } 
    cs,8) |
  \tuplet 3/2 { a''16( cs, fs } fs,8) \tuplet 3/2 { a'16( cs, fs } fs,8)
    \tuplet 3/2 { a'16( cs, fs } fs,8) \tuplet 3/2 { a'16( cs, fs } fs,8) |
  \tuplet 3/2 { fs'16( fs, b } b,8) \tuplet 3/2 { fs''16( fs, b } b,8)
    \tuplet 3/2 { fs''16( fs, b } b,8) \tuplet 3/2 { fs''16( fs, b } b,8) |
  \tuplet 3/2 { as''16( cs, fs } fs,8) \tuplet 3/2 { as'16( cs, fs } fs,8) 
    \tuplet 3/2 { as'16( cs, fs } fs,8) \tuplet 3/2 { as'16( cs, fs } fs,8) |
  \tuplet 3/2 { fs'16( fs, b } b,8) \tuplet 3/2 { fs''16( fs, b } b,8)
    \tuplet 3/2 { fs''16( fs, b } b,8) \tuplet 3/2 { fs''16( fs, b } b,8) |
  \tuplet 3/2 { as''16( cs, fs } fs,8) \tuplet 3/2 { as'16( cs, fs } fs,8) 
    \tuplet 3/2 { as'16( cs, fs } fs,8) \tuplet 3/2 { as'16( cs, fs } fs,8) |
  \tuplet 3/2 { a'16( cs, fs } fs,8) \tuplet 3/2 { a'16( cs, fs } fs,8)
    \tuplet 3/2 { a'16( cs, fs } fs,8) \tuplet 3/2 { a'16( cs, fs } fs,8) |
    
  \barNumberCheck 33
  \oneVoice
  <a e' a>2 <b g'>4 <cs gs'> |
  <fs, cs' a'>1_\fermata |
}

dynamics = {
  s2\p s4\< s4\> <>\! |
  s1 |
  s1\f |
  s4 s4\> s8.. s32\! s4 |
  s2\p s4\< s4\> <>\! |
  s1 |
  s1\f |
  s4 s2.\> <>\! |
  
  \barNumberCheck 9
  s2\p \pocoAPocoCresc s_\startTextSpan |
  s1 * 2 |
  s2... s16\stopTextSpan |
  s1\f |
  s4 s2\< s8.. s32\! |
  s1\ff |
  s2\p s4\< s4\> <>\! |
  
  \barNumberCheck 17
  s2\p s8 s\< s\> s\! |
  s2\p s8 s\< s\> s\! |
  s1\p |
  s4 s2.\cresc |
  s2.... s32\! |
  s1\ff |
  s2....\> s32\! |
  s1 |
  
  \barNumberCheck 25
  s1 * 2 |
  s1\p |
  s4 s2\< s8.\> s16\! | 
  s1\pp |
  s4 s2\< s8.\> s16\! | 
  s4 s2\< s8.. s32\! |
  s2...\p\> s16\! |
  s1\p\> |
  s2 s\! |
}

pedal = {
  \repeat unfold 4 { 
    s8.\sustainOn s16\sustainOff s8.\sustainOn s16\sustainOff
    s8.\sustainOn s16\sustainOff s8.\sustainOn s16\sustainOff | 
  }
  \tag layout {
    s1^\sempreConPedale
    s1 * 3 |
  }
  \tag midi {
    \repeat unfold 4 { 
      s8.\sustainOn s16\sustainOff s8.\sustainOn s16\sustainOff
      s8.\sustainOn s16\sustainOff s8.\sustainOn s16\sustainOff | 
    }
  }
  
  \barNumberCheck 9
  \tag layout { s1 * 8 | }
  \tag midi {
    \repeat unfold 8 { 
      s8.\sustainOn s16\sustainOff s8.\sustainOn s16\sustainOff
      s8.\sustainOn s16\sustainOff s8.\sustainOn s16\sustainOff | 
    }
  }
  
  \barNumberCheck 17
  \tag layout { s1 * 5 | }
  \tag midi {
    \repeat unfold 5 { 
      s8.\sustainOn s16\sustainOff s8.\sustainOn s16\sustainOff
      s8.\sustainOn s16\sustainOff s8.\sustainOn s16\sustainOff | 
    }
  }
  s4\sustainOn s8. s16\sustainOff s4\sustainOn s8. s16\sustainOff |
  \repeat unfold 2 { 
    s8.\sustainOn s16\sustainOff s8.\sustainOn s16\sustainOff
    s8.\sustainOn s16\sustainOff s8.\sustainOn s16\sustainOff | 
  }
  
  \barNumberCheck 25
  s8.\sustainOn s16\sustainOff s8.\sustainOn s16\sustainOff
    s8.\sustainOn s16\sustainOff s8.\sustainOn s16\sustainOff | 
  s4\sustainOn s8. s16\sustainOff s4\sustainOn s8. s16\sustainOff |
  \repeat unfold 6 { s2...\sustainOn s16\sustainOff | }
}

forceBreaks = {
  s1\noBreak s1\break % 1 - 2
  s1\break s1\break % 3 - 4
  s1\noBreak s1\break % 5 - 6
  \repeat unfold 12 { s1\break } % 7 - 20
  s1\noBreak s1\break % 19 - 20
  s1\break % 21 
  \repeat unfold 5 { s1\noBreak s1\break } % 22 - 31
  s1\noBreak s1\noBreak % 32 - 33
  s1\break % 34
}

preludeEightMusic = \score { 
  \keepWithTag #'layout
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 8"
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
    \new Devnull \forceBreaks
  >>
  \layout {}
}

preludeEightMidi = \book {
  \bookOutputName "prelude-op28-no8"
  \score { 
    \keepWithTag #'midi
    <<
      \new Staff = "upper" << \rightHand \dynamics \pedal >>
      \new Staff = "lower" << \leftHand \dynamics \pedal >>
    >>
    \midi {}
  }
}
