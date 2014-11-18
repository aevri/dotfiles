#! /usr/bin/env bash
git config --global alias.logdog "log --decorate --oneline --graph"
git config --global alias.sed '! '"git ls-files -z | xargs --null sed --in-place --expression"
git config --global alias.headmasters 'logdog HEAD $(for remote in $(git remote); do echo -n "$remote/master "; done) --not $(git merge-base --octopus HEAD $(for remote in $(git remote); do echo -n "$remote/master "; done))~1'
