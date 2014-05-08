#! /usr/bin/env bash
git config --global alias.logdog "log --decorate --oneline --graph"
git config --global alias.sed '! '"git ls-files -z | xargs --null sed --in-place --expression"
