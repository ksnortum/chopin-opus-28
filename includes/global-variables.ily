%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.22.2"

%%% Scheme functions %%%

makeSpanner =
#(define-music-function (mrkup) (markup?)
  #{
    \override TextSpanner.bound-details.left.text = #mrkup
    \override TextSpanner.bound-details.left.stencil-align-dir-y = 0.25
    \override TextSpanner.bound-details.left-broken.text = ##f
  #})

%%% Redefine %%%

staffUp   = \change Staff = "upper"
staffDown = \change Staff = "lower"
up   = { \staffUp \stemDown }
down = { \staffDown \stemUp }

voiceFive = #(context-spec-music (make-voice-props-set 4) 'Voice)

clearStem = \tweak Stem.transparent ##t \etc
omitAccidental = \once \omit Accidental

whiteoutCresc = \makeSpanner \markup \large \italic \whiteout \pad-markup #0.5
  "cresc."
pocoAPocoCresc = \makeSpanner \markup \large \italic "poco a poco cresc."
semprePuiAnimato = \makeSpanner \markup \large \italic "sempre più animato"
smorzando = \override TextSpanner.bound-details.left.text =  
  \markup \large \italic "smorzando"
perden = \makeSpanner \markup \large \italic "perdendosi"
ritSpan = \makeSpanner \markup \large \italic "rit."
diminESmorz = \makeSpanner \markup \large \italic \whiteout \pad-markup #0.5
  "dimin. e smorz."

dynamicInsideSlur = {
  \once \override DynamicLineSpanner.avoid-slur = #'inside
  \once \override DynamicLineSpanner.outside-staff-priority = ##f
}

trillInsideSlur = {
  \once \override TrillSpanner.avoid-slur = #'inside
  \once \override TrillSpanner.outside-staff-priority = ##f
}

textInsideSlur = {
  \once \override TextScript.avoid-slur = #'inside
  \once \override TextScript.outside-staff-priority = ##f
}

textInsideStaff = \once \override TextScript.outside-staff-priority = ##f

slashFlag = \once \override Flag.stroke-style = "grace"
insideStaff =
  \tweak outside-staff-priority ##f 
  \tweak staff-padding #'()
  \etc
  
transparent = \tweak transparent ##t \etc

fermataOverUnderBarLine = {
  \once \override Score.RehearsalMark.break-visibility = 
    #begin-of-line-invisible
  \mark \markup \small { \musicglyph #"scripts.ufermata" }
  
  %% The RehearsalMark in Staff is overriden, while not touching the one
  %% from Score.
  \once \override Staff.RehearsalMark.direction = #DOWN
  \once \override Staff.RehearsalMark.rotation = #'(180 0 0)
}

accidentalUnderTurn = \once \override TextScript.script-priority = #-100

%%% Markup %%%

rit = \markup \large \italic "rit."
stretto = \markup \large \italic "stretto"
slentando = \markup \large \italic "slentando"
sostenutom = \markup \large \italic \whiteout \pad-markup #0.5 "sostenuto"
leggiermente = \markup \large \italic "leggiermente"
dimm = \markup \large \italic "dim."
espressivom = \markup \large \italic \whiteout \pad-markup #0.5 "espressivo"
smorz = \markup \large \italic \whiteout \pad-markup #0.5 "smorz."
sottoVoce = \markup \large \italic "sotto voce"
pDolce = \markup { 
  \dynamic p \large \italic \whiteout \pad-markup #0.5 "dolce" 
}
sempreConPedale = \markup \large \italic "sempre con Pedale"
pocoRitenuto = \markup \large \italic "poco ritenuto"
moltoAgitato = \markup \large \italic "molto agitato e stretto"
decrescm = \markup \large \italic "decresc."
crescm = \markup \large \italic "cresc."
ritenuto = \markup \large \italic "ritenuto"
pLeggiero = \markup { \dynamic p \large \italic "leggiero" }
mfLegato = \markup { 
  \dynamic mf \large \italic \whiteout \pad-markup #0.5 "legato" 
}
pocoRit = \markup \large \italic "poco rit."
aTempo = \markup \large \italic "a tempo"
pLegato = \markup { 
  \dynamic p \large \italic "legato" 
}
pSempreLegato = \markup { \dynamic p \large \italic "sempre legato" }
piuP = \markup { \large \italic "più" \dynamic p }
piuLento = \markup \bold "Più lento"
pSostenuto = \markup { \dynamic p \large \italic "sostenuto" }
tempoI = \markup \bold "Tempo I."
pesante = \markup \large \italic "pesante"
slentando = \markup \large \italic "slentando"
sempreLegato = \markup \large \italic "sempre legato"
ffz = \markup \dynamic "ffz"
pDelicatiss = \markup { \dynamic p \large \italic "delicatiss." }
ppATempo = \markup { \dynamic pp \large \italic "a tempo" }
fzSempreForte = \markup { \dynamic fz \large \italic "sempre forte" }
conForza = \markup \large \italic "con forza"
fffStretto = \markup { \dynamic fff \large \italic "stretto" }
sempreFF = \markup { \large \italic "sempre" \dynamic ff }
doubleSharp = \markup \teeny \doublesharp
