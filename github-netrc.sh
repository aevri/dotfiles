#! /usr/bin/env bash
TOKEN=$(curl --data '{"note": "dotfiles netrc"}' https://api.github.com/authorizations -u aevri | python -m json.tool | grep '\btoken\b' | awk '{print $2}' | tr -d '",')

touch ~/.netrc
chmod go-rwx ~/.netrc
echo >> ~/.netrc
echo machine github.com >> ~/.netrc
echo login aevri >> ~/.netrc
echo password $TOKEN >> ~/.netrc
