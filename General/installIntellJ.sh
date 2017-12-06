#! /bin/bash

wget https://download-cf.jetbrains.com/idea/ideaIC-2017.1.1.tar.gz
sudo tar -xvzf ideaIC-2017.1.1.tar.gz -C /opt
sudo mv /opt/idea-IC* /opt/idea-IC
sudo ln -s /opt/idea-IC/bin/idea.sh /usr/bin/idea

sudo echo "[Desktop Entry]
Name=IntelliJ
Exec=idea
Terminal=false
Icon=/opt/idea-IC/bin/idea.png
Type=Application
Categories=TextEditor;IDE;Development
X-Ayatana-Desktop-Shortcuts=NewWindow
[NewWindow Shortcut Group]
Name=New Window
TargetEnvironment=Unity" > idea-IC.desktop
sudo mv idea-IC.desktop /usr/share/applications/idea-IC.desktop

rm idea*.tar.gz
