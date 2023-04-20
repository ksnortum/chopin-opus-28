#  README for Chopin Preludes, Opus 28

## LilyPond File Structure
This sheet music is created using the [LilyPond](https://lilypond.org) engraving software.  There are two basic types of files: ones that you execute directly using the `lilypond` command, and those that are included in other files.  Any file that ends in `.ly` produces output (a PDF by default).  Included files end in `.ily` (this is just a convention) and are found in the *includes* directory.

All of the music of the individual preludes are found in `includes/prelude-op28-no[prelude-number]-parts.ily`.  So for instance, the music for the first prelude is in `includes/prelude-op28-no1-parts.ily`.

The file `header-paper.ily` contains the headers, and the global paper, layout, and midi blocks.  The file `global-variables.ily` contains global Scheme functions, redefinitions, and markup variables.  The `title-page.ily` contains the markup for a very simple title page for the preludes.

## Creating PDFs
(I highly recommend the [Frescobaldi](https://www.frescobaldi.org/) IDE for LilyPond.  It makes all of the following much easier.)

The complete book of all preludes can be created by issuing the following command in the directory this file is in (assuming you have `lilypond` in your PATH variable):

        lilypond preludes-op28-book.ly

To create a smaller PDF, try:

        lilypond -dno-point-and-click preludes-op28-book.ly

Each separate prelude has its own LilyPond file in the format `prelude-op28-no[prelude-number]-stand-alone.ly`.  So for instance:

        lilypond prelude-op28-no1-stand-alone.ly

## MIDI Files
Issuing the `lilypond` command will also create MIDI files, but because of the limitations of LilyPond, they are not always that good.  They are used mostly for "audial proofreading."

## Spacing Issues
Getting the spacing between preludes is a trade-off between clarity and page breaks.  If you want to control the page breaks differently, look in the file `preludes-op28-book.ly` and add or remove `\pageBreak` as you like.  There is only one page break in another file: `includes/prelude-op28-no12-parts.ily`.  Use `includes/prelude-op28-no12-parts-stand-alone.ily` if you don't want a page break in the music.

## Warnings and Errors
If you compile the book of preludes, you will probably see some warnings.  This is telling you that some of the pages have been compressed to fit your spacing needs.  I usually find that a few compressed pages is better than the long, drawn out systems that LilyPond sometimes renders.

You may also see programming errors that are likely caused by [this bug](https://gitlab.com/lilypond/lilypond/-/issues/6171) and can be ignored.

## License
This work is licensed under the [Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)](https://creativecommons.org/licenses/by-sa/4.0/) from Creative Commons.  Follow the link for details.  Basically, you can use this work however you want *if* you keep the same license and you attribute the work to me, Knute Snortum (knute@snortum.net).

