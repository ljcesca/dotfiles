mkdir -p ~/.config/ghostty
echo "Creating symlink for ~/dotfiles/ghostty/config -> ~/.config/ghostty/config"
rm -rf ~/.config/ghostty/config
ln -sf ~/dotfiles/ghostty/config ~/.config/ghostty/config
