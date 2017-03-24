#Rick's usefuls scripts for every computer
This is my bin folder. Having to edit scripts in 
my personal bin folder over and over is super annoying
so git and bitbucket should be good for keeping it
up-to-date. 
Maybe I'll move it to GitHub at some time.

###Current Script List
`finalLy` - produces pdfs/midis from folder of lys in 'output'
directory one level higher

`finalLyletter` - same as `finalLy` but forces letter size output 
if not otherwise specified.

`lymakeinclude` - creates lilypond include file from foler of
.ly and .ily files. Places this file one directory higher 
named in the format *current-working-directory*\_include.ily.

`lyclean` - cleans up after vim, lilypond, sed, and other tools
used in my lilypond workflow.
Uses `rm` so it is NOT reversible.

`lynuke` - same as `lyclean` but traverses directory structure.
Uses `rm` so it is NOT reversible.

`lylog` - runs lilypond over a file but stdout/stderr is redirected
into *filename*.log.

`collapsed\_path` - produces a fish like collapsed path for
tabbing in zsh. I use it in my prompt. Copied from a zsh mailing list
archive. Originally by Daniel Friesel, see header for details.
