\version "2.24.0"

\include "includes/header-paper.ily"
\include "includes/prelude-op28-no9-parts.ily"

\header {
  title = "Prelude"
  opus = "Opus 28"
  composer = "Frédéric Chopin"
}

\paper {
  top-margin = 3\mm % default 5
  bottom-margin = 3\mm % default 6
  system-system-spacing.padding = 2
  two-sided = ##f
}

\preludeNineMusic
\preludeNineMidi
