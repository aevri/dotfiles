#! /usr/bin/env bash
git config --global alias.logdog "log --decorate --oneline --graph"
git config --global alias.logdogtoday "log --decorate --oneline --graph --all --since midnight"
git config --global alias.logdog5 "log --decorate --oneline --graph -5"
git config --global alias.sed '! '"git ls-files -z | xargs --null sed --in-place --expression"
git config --global alias.headmasters '!git logdog HEAD $(for remote in $(git remote); do printf "$remote/master "; done) --not $(git merge-base --octopus HEAD $(for remote in $(git remote); do printf "$remote/master "; done))~1'
git config --global alias.dupe '!git ls-tree -r HEAD | cut -c 13- | sort | uniq -D -w 40'
git config --global alias.prfetch '!f() { git fetch $1 +refs/pull/*:refs/pull/* ; }; f'
