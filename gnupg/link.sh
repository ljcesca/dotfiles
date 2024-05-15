mkdir -p ~/.gnupg
echo "Creating symlink for ~/dotfiles/gnupg/gpg-agent.conf -> ~/.gnupg/gpg-agent.conf"
rm -rf ~/.gnupg/gpg-agent.conf
ln -sf ~/dotfiles/gnupg/gpg-agent.conf ~/.gnupg/gpg-agent.conf