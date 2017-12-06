#! /bin/bash

wget http://c758482.r82.cf2.rackcdn.com/sublime_text_3_build_3065_x64.tar.bz2
sudo tar -vxjf sublime_text_3_build_3065_x64.tar.bz2 -C /opt
sudo ln -s /opt/sublime_text_3/sublime_text /usr/bin/sublime3
echo 'alias sublime="sublime3"' >> ~/.bashrc

sudo echo "[Desktop Entry]
Name=Sublime3
Exec=sublime3
Terminal=false
Icon=/opt/sublime_text_3/Icon/48x48/sublime-text.png
Type=Application
Categories=TextEditor;IDE;Development
X-Ayatana-Desktop-Shortcuts=NewWindow
[NewWindow Shortcut Group]
Name=New Window
Exec=sublime -n
TargetEnvironment=Unity" > sublime3.desktop
sudo mv sublime3.desktop /usr/share/applications/sublime3.desktop


rm sublime_text_3_build_3065_x64.tar.bz2
