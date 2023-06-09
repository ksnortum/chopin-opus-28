\version "2.24.0"

\include "includes/header-paper.ily"
\include "includes/prelude-op28-no18-parts.ily"

\header {
  title = "Prelude"
  opus = "Opus 28"
  composer = "Frédéric Chopin"
}

\paper {
  ragged-last-bottom = ##t
  min-systems-per-page = ##f
  system-system-spacing.padding = 2
  two-sided = ##f
}

\preludeEighteenMusic
\preludeEighteenMidi
