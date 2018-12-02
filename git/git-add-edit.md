Using 'git add --edit'
======================

Sometimes there is a large patche that you'd like to break down, and you want
to avoid doing too many passes over it.

If you can use a regex to separate the semantic changes, and the changes are
concentrated in just a few files, you can use the '/' functionality of 'git add
--patch'.

If the changes are in many files, you might prefer to edit the patch in one vim
buffer, using 'git add --edit'. In this mode you can use vim's search
functionality to find the changes you'd like to work on. Note that you can use
this ex command to unstage the visual selection:

    '<,'>s/^-/ / | '<,'>g/^+/d

Note that it may have been more convenient to unstage the changes that you
actually wanted to stage, since there may have been less of those. To swap the
index and working copy changes, it's best to make two commits and then use
rebase to swap the order.
