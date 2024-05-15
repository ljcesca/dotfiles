#!/bin/sh


if [ ! -e ~/.gnupg/gpg-agent.conf ]
then
	echo 'pinentry-program /opt/homebrew/bin/pinentry-mac' > ~/.gnupg/gpg-agent.conf
fi
