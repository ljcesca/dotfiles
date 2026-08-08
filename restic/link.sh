mkdir -p ~/.config/restic
echo "Creating symlink for ~/dotfiles/restic/excludes -> ~/.config/restic/excludes"
rm -rf ~/.config/restic/excludes
ln -sf ~/dotfiles/restic/excludes ~/.config/restic/excludes
