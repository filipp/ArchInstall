### Introduction

This script will build an admin-friendlier PKG from an ArchiCAD installer and updater. The result will be a single PKG file that will install both ArchiCAD and the hotfix in one go.

The idea behind this approach is simple - package the installer and updater and install them into a temporary location (under /tmp) and then use a *postinstall* script to run those packages silently.


### Requirements

- [ArchiCAD installer](http://www.graphisoft.com/downloads/)
- [ArchiCAD hotfix installer](http://www.graphisoft.com/downloads/archicad/updates/)
- XCode command-line tools (pkgbuild and make) to build the installer


### How to

- Generate a "deployed installation" package using the ArchiCAD installer
- Copy the result to the **payload** folder and rename the installer **Install**
- Copy the hotfix to the **payload** folder and rename it **Update**
- Run *make pkg* to create the ArchiCAD installer.
- Run *make dmg* to create a DMG for the installer.

![ArchInstall](http://unflyingobject.com/tmp/archinstall/done.png)


### Bugs

The installer will prompt for an admin password. I suspect this is due to the CodeMeter installer.


### License

            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
                    Version 2, December 2004

     Copyright (C) 2016 Filipp Lepalaan <filipp@mac.com>

     Everyone is permitted to copy and distribute verbatim or modified
     copies of this license document, and changing it is allowed as long
     as the name is changed.

            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
    TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION

    0. You just DO WHAT THE FUCK YOU WANT TO.
