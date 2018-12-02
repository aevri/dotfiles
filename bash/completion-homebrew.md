To install git or other completions with homebrew, need to

```bash
brew install bash-completion
```

Also add this to .bash_profile:

```bash
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
```
