%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"

#(set-global-staff-size 18)

\header {
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  source = "https://s9.imslp.org/files/imglnks/usimg/8/80/IMSLP86359-PMLP02344-chopin-24-prel.pdf and https://s9.imslp.org/files/imglnks/usimg/f/fc/IMSLP79718-PMLP02344-FChopin_Preludes_Op28.pdf"
  copyright = \markup { 
    \center-column {
      "Copyright © 2023 Knute Snortum. This work is licensed under the" 
      \with-url #"https://creativecommons.org/licenses/by-sa/4.0/" 
      "Creative Commons Attribution-ShareAlike 4.0 International License."
    }
  }
}

\paper {
  ragged-right = ##f
  ragged-last-bottom = ##f
  min-systems-per-page = 5

  markup-system-spacing = 
    #'((basic-distance . 1)
       (padding . 0.5)) % defaults: 1, 0.5

  system-system-spacing =
    #'((basic-distance . 4) 
       (minimum-distance . 2)
       (padding . 1)
       (stretchability . 60)) % defaults: 12, 8, 1, 60
  
  score-system-spacing =
    #'((basic-distance . 12) 
       (minimum-distance . 8)
       (padding . 4)
       (stretchability . 60))

  last-bottom-spacing = 
    #'((basic-distance . 6)
       (minimum-distance . 4)
       (padding . 3)
       (stretchability . 30)) % defaults 1, 0, 1, 30
    
  top-system-spacing.minimum-distance = 10
    
  #(set-paper-size "letter")
  
  % These settings are scaled to paper-size
  top-margin = 5\mm % default 5
  bottom-margin = 6\mm % default 6
  left-margin = 10\mm % default 10
  right-margin = 10\mm % default 10
}

\layout {
  \context {
    \Score
    \omit BarNumber
    \override Slur.details.free-head-distance = 1
  }
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  } 
  \context {
    \Voice
    \override Tie.minimum-length = 2 % do I want this?
  }
}

\midi {
  \context {
    \Staff
    \consists "Dynamic_performer"
  }
  \context {
    \Voice
    \remove "Dynamic_performer"
  }    
}
