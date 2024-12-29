# Stop on error
set -e

SCRIPT_DIR=$(dirname "$0")

mkdir -p ~/.configs-orig

if ([ ! -L ~/.bashrc ]); then
  mv ~/.bashrc ~/.configs-orig/
  ln -s "$SCRIPT_DIR/.bashrc" ~/.bashrc
fi

if ([ ! -L ~/.vimrc ]); then
  mv ~/.vimrc ~/.configs-orig/
  ln -s "$SCRIPT_DIR/.vimrc" ~/.vimrc
fi

