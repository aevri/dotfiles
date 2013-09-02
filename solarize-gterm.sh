set -e
sudo apt-get install python-gconf
git clone http://github.com/sigurdga/gnome-terminal-colors-solarized.git ../gnome-terminal-colors-solarized
cd ../gnome-terminal-colors-solarized
./solarize

# To Uninstall:
#
# Change to another profile in Gnome Terminal,
# then remove the Solarized profile by running:
#
# $ rm -r ~/.gconf/apps/gnome-terminal/profiles/Solarized/
