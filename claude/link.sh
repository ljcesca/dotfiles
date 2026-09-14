mkdir -p ~/.claude
echo "Creating symlink for ~/dotfiles/claude/settings.json -> ~/.claude/settings.json"
rm -rf ~/.claude/settings.json
ln -sf ~/dotfiles/claude/settings.json ~/.claude/settings.json
