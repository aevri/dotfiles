#! /usr/bin/env bash
git config --global alias.logdog "log --decorate --oneline --graph"
git config --global alias.logdogtoday "log --decorate --oneline --graph --all --since midnight"
git config --global alias.logdog5 "log --decorate --oneline --graph -5"
git config --global alias.sed '! '"git ls-files -z | xargs --null sed --in-place --expression"
git config --global alias.headmasters '!git logdog HEAD $(for remote in $(git remote); do printf "$remote/master "; done) --not $(git merge-base --octopus HEAD $(for remote in $(git remote); do printf "$remote/master "; done))~1'
git config --global alias.dupe '!git ls-tree -r HEAD | cut -c 13- | sort | uniq -D -w 40'
git config --global alias.prfetch '!f() { git fetch $1 +refs/pull/*:refs/pull/* ; }; f'
git config --global alias.mrfetch '!f() { git fetch $1 +refs/merge-requests/*:refs/merge-requests/* ; }; f'
git config --global alias.ombdiff '!f() { git range-diff origin/master @{u} @ $@; }; f'
git config --global alias.umbdiff '!f() { git range-diff upstream/master @{u} @ $@; }; f'
git config --global alias.omrebase '!f() { ancestor=$(git merge-base origin/master @) || return 1; git rebase  -i $ancestor --autosquash; }; f'
git config --global alias.umrebase '!f() { ancestor=$(git merge-base upstream/master @) || return 1; git rebase  -i $ancestor --autosquash; }; f'
git config --global alias.pushfl 'push --force --force-with-lease'
git config --global alias.addp '!git -c interactive.diffFilter="/usr/local/share/git-core/contrib/diff-highlight/diff-highlight | less -FRX --tabs=4" add -p'
git config --global alias.fshow '!git -c interactive.diffFilter="/usr/local/share/git-core/contrib/diff-highlight/diff-highlight | less -FRX --tabs=4" show $@'
git config --global alias.fdiff '!git -c interactive.diffFilter="/usr/local/share/git-core/contrib/diff-highlight/diff-highlight | less -FRX --tabs=4" diff $@'
git config --global alias.blackenrebase '!git rebase $@ -X theirs --exec '"'"'git diff-tree --no-commit-id --name-only -r @ | xargs black && git commit --amend -a --no-edit'"'"
git config --global alias.ssync '! s3sync fetch $(git config --get sars.archivepath).git.tar.gpg && git linky sync --verbose --no-config-ok && sars push -O && s3sync push $(git config --get sars.archivepath).git.tar.gpg'
