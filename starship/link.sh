mkdir -p ~/.config
echo "Creating symlink for ~/dotfiles/starship/starship.toml -> ~/.config/starship.toml"
rm -rf ~/.config/starship.toml
ln -sf ~/dotfiles/starship/starship.toml ~/.config/starship.toml