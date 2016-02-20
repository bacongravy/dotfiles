# Load exports, aliases and functions
for file in ~/.dotfiles/{exports,aliases,functions}; do
  source "$file";
done;
unset file;

# Make bash check it's window size after a process completes
shopt -s checkwinsize

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;
