%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"

\include "includes/header-paper.ily"
\include "includes/title-page.ily"
\include "includes/prelude-op28-no1-parts.ily"
\include "includes/prelude-op28-no2-parts.ily"
\include "includes/prelude-op28-no3-parts.ily"
\include "includes/prelude-op28-no4-parts.ily"
\include "includes/prelude-op28-no5-parts.ily"
\include "includes/prelude-op28-no6-parts.ily"
\include "includes/prelude-op28-no7-parts.ily"
\include "includes/prelude-op28-no8-parts.ily"
\include "includes/prelude-op28-no9-parts.ily"
\include "includes/prelude-op28-no10-parts.ily"
\include "includes/prelude-op28-no11-parts.ily"
\include "includes/prelude-op28-no12-parts.ily"
\include "includes/prelude-op28-no13-parts.ily"
\include "includes/prelude-op28-no14-parts.ily"
\include "includes/prelude-op28-no15-parts.ily"
\include "includes/prelude-op28-no16-parts.ily"
\include "includes/prelude-op28-no17-parts.ily"
\include "includes/prelude-op28-no18-parts.ily"
\include "includes/prelude-op28-no19-parts.ily"
\include "includes/prelude-op28-no20-parts.ily"
\include "includes/prelude-op28-no21-parts.ily"
\include "includes/prelude-op28-no22-parts.ily"
\include "includes/prelude-op28-no23-parts.ily"
\include "includes/prelude-op28-no24-parts.ily"

% \pointAndClickOff % <-- uncomment me for smaller PDF size

\paper {
  tocTitleMarkup = \markup \huge \column {
    \fill-line { \null "Table of Contents" \null }
    \hspace #1
  }
  
  tocItemMarkup = \tocItemWithDotsMarkup
}

\titlePage
\pageBreak

\bookpart {
  \header {
    title = ##f
    subtitle = ##f
    composer = ##f
    arranger = ##f
    copyright = ##f
    tagline = ##f
  }
  \markuplist \table-of-contents
}

% \concat { "Etude No. 1 in A" \raise #0.75 \teeny \flat " major" }
\tocItem \markup { "Prelude No. 1 in C major" }
\preludeOneMusic
\pageBreak

\tocItem \markup { "Prelude No. 2 in A minor" }
\preludeTwoMusic
\pageBreak

\tocItem \markup { "Prelude No. 3 in G major" }
\preludeThreeMusic
\pageBreak

\tocItem \markup { "Prelude No. 4 in E minor" }
\preludeFourMusic
\pageBreak

\tocItem \markup { "Prelude No. 5 in D major" }
\preludeFiveMusic
\pageBreak

\tocItem \markup { "Prelude No. 6 in B minor" }
\preludeSixMusic
\pageBreak

\tocItem \markup { "Prelude No. 7 in A major" }
\preludeSevenMusic

\tocItem \markup \concat { 
  "Prelude No. 8 in F" \raise #0.75 \teeny \sharp " minor" 
}
\preludeEightMusic
\pageBreak

\tocItem \markup { "Prelude No. 9 in E major" }
\preludeNineMusic
\pageBreak

\tocItem \markup \concat { 
  "Prelude No. 10 in C" \raise #0.75 \teeny \sharp " minor" 
}
\preludeTenMusic
\pageBreak

\tocItem \markup { "Prelude No. 11 in B major" }
\preludeElevenMusic
\pageBreak

\tocItem \markup \concat { 
  "Prelude No. 12 in G" \raise #0.75 \teeny \sharp " minor" 
}
\preludeTwelveMusic
\pageBreak

\tocItem \markup \concat { 
  "Prelude No. 13 in F" \raise #0.75 \teeny \sharp " major" 
}
\preludeThirteenMusic
\pageBreak

\tocItem \markup \concat { 
  "Prelude No. 14 in E" \raise #0.75 \teeny \flat " minor" 
}
\preludeFourteenMusic
\pageBreak

\tocItem \markup \concat { 
  "Prelude No. 15 in D" \raise #0.75 \teeny \flat " major" 
}
\preludeFifteenMusic
\pageBreak

\tocItem \markup \concat { 
  "Prelude No. 16 in B" \raise #0.75 \teeny \flat " minor" 
}
\preludeSixteenMusic
\pageBreak

\tocItem \markup \concat { 
  "Prelude No. 17 in A" \raise #0.75 \teeny \flat " major" 
}
\preludeSeventeenMusic
\pageBreak

\tocItem \markup { "Prelude No. 18 in F minor" }
\preludeEighteenMusic

\tocItem \markup \concat { 
  "Prelude No. 19 in E" \raise #0.75 \teeny \flat " major" 
}
\preludeNinteenMusic
\pageBreak

\tocItem \markup { "Prelude No. 20 in C minor" }
\preludeTwentyMusic

\tocItem \markup \concat { 
  "Prelude No. 21 in B" \raise #0.75 \teeny \flat " major" 
}
\preludeTwentyOneMusic
\pageBreak

\tocItem \markup { "Prelude No. 22 in G minor" }
\preludeTwentyTwoMusic
\pageBreak

\tocItem \markup { "Prelude No. 23 in F major" }
\preludeTwentyThreeMusic
\pageBreak

\tocItem \markup { "Prelude No. 24 in D minor" }
\preludeTwentyFourMusic

\preludeOneMidi
\preludeTwoMidi
\preludeThreeMidi
\preludeFourMidi
\preludeFiveMidi
\preludeSixMidi
\preludeSevenMidi
\preludeEightMidi
\preludeNineMidi
\preludeTenMidi
\preludeElevenMidi
\preludeTwelveMidi
\preludeThirteenMidi
\preludeFourteenMidi
\preludeFifteenMidi
\preludeSixteenMidi
\preludeSeventeenMidi
\preludeEighteenMidi
\preludeNinteenMidi
\preludeTwentyMidi
\preludeTwentyOneMidi
\preludeTwentyTwoMidi
\preludeTwentyThreeMidi
\preludeTwentyFourMidi
