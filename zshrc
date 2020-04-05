# Load exports, aliases and functions
for file in ~/.dotfiles/{exports,aliases,functions}; do
  source "$file";
done;
unset file;
