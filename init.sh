#!/bin/bash

if ! grep -q nixman/bin ~/.bashrc ; then
	echo >> ~/.bashrc
	echo "PATH=\"\$PATH:$HOME/nixman/bin\"" >> ~/.bashrc
	echo >> ~/.bashrc
fi

################################

if [ ! -f ~/.nix-channels ] ; then
	echo https://nixos.org/channels/nixpkgs-unstable nixpkgs > ~/.nix-channels
fi

if [ ! -d ~/.nix-profile ] ; then
	ln -s /nix/var/nix/profiles/per-user/$USER/profile ~/.nix-profile
fi

if [ ! -d ~/.nix-defexpr ] ; then
	mkdir -p ~/.nix-defexpr
	ln -s /nix/var/nix/profiles/per-user/$USER/channels ~/.nix-defexpr/channels
	ln -s /nix/var/nix/profiles/per-user/root/channels ~/.nix-defexpr/channels_root
fi

################################

if [ ! -d ~/nix-profiles ] ; then
	ln -s /nix/var/nix/profiles/per-user/$USER ~/nix-profiles
fi

touch ~/.nix-enable

