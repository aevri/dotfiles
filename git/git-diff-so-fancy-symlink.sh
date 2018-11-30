DIR=$(python -c "import os; print(os.path.abspath(os.path.dirname('$0')))")
TARGET="$DIR"/diff-so-fancy/diff-so-fancy

ln -vs "$TARGET" ~/bin/diff-so-fancy
