#Some useful scripts for use with lilypond
These are some scripts I use when working with lilypond files in vim.

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

`lymakeparts` - Create lilypond part notes files 
based on a template.tmp file in same directory.
Written in **ruby**.
