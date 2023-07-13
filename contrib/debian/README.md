
Debian
====================
This directory contains files used to package dashd/diabase-qt
for Debian-based Linux systems. If you compile dashd/diabase-qt yourself, there are some useful files here.

## diabase: URI support ##


diabase-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install diabase-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your diabase-qt binary to `/usr/bin`
and the `../../share/pixmaps/dash128.png` to `/usr/share/pixmaps`

diabase-qt.protocol (KDE)

