#!/bin/bash

if ! grep -q nixman/bin ~/.bashrc ; then
	echo >> ~/.bashrc
	echo "PATH=\"\$PATH:$HOME/nixman/bin\"" >> ~/.bashrc
	echo >> ~/.bashrc
fi