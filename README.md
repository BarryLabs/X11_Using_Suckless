## Summary
A very simple rice I made for X11 using dwm, dmenu and st. It features a joker color theme for dmenu and a custom color scheme for st.

### Hotkeys
All the original hotkeys are the same beyond these three I prefer;

ALT + S > Opens terminal. Must be set by window manager.
CTRL + Up Arrow > Zooms in within terminal.
CTRL + Down Arrow > Zooms out within terminal.

## Installation
First, assuming you are on a minimal installation you will need to get X11. To acquire everything you need you will need to run the following command.
~~~
sudo pacman -S xorg-server xorg-xinit libx11 libxinerama libxft webkit2gtk
~~~

With everything to run X11, all you need to do is to clone the repository with the following command.
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

### .bashrc
I included my .bashrc file which has a handful of useful commands for this setup. This step is optional as its just command aliases and the shell prompt.

The .bashrc file will also be moved with the other contents of the X11_Using_Suckless folder so run the following command to put it into your home directory, backup your old .bashrc and replace it with this once.
~~~
mv .bashrc .bashrc_ && mv .config/.bashrc /home/$USER/.bashrc
~~~

The underscored file is your original copy so if you want to return to that it should be easy. Once this is done, run the following command to source the file.
~~~
source ~/.bashrc
~~~

I recommend using ranger with this build which is why I also included ranger as its part of my aesthetic display however I also use thunar sometimes.