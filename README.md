## Summary
A very simple rice I made for X11 using dwm, dmenu and st. It features a joker color theme for dmenu and a custom color scheme for st.

### Hotkeys
All the original hotkeys are the same beyond these three I prefer;

ALT + S > Opens terminal. Must be set by window manager.
CTRL + Up Arrow > Zooms in within terminal.
CTRL + Down Arrow > Zooms out within terminal.

## Installation
To clone the repository you can use the following command.
~~~
git clone https://github.com/BarryLabs/X11_Using_Suckless.git
~~~

Once cloned you can move them into your .config folder like I prefer with the following command.
~~~
mv X11_Using_Suckless/* ~/home/$USER/.config/
~~~

Install each of them by using the following commands.
~~~
cd ~/.config/dmenu/ && sudo make clean install
cd ~/.config/dwm/ && sudo make clean install
cd ~/.config/st/ && sudo make clean install
~~~

Once installed you will need to make sure that your .xinitrc file starts dwm by appending the following to the .xinitrc.
~~~
exec dwm
~~~
