git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"

# You can pre-seed your less pager with a search pattern, so you can move between files with n/N keys:

# Note that 'less' will always print a screen-full of stuff if a pattern is supplied.
# git config --global pager.diff "diff-so-fancy | less --tabs=4 -RFX --pattern '^(Date|added|deleted|modified): '"
