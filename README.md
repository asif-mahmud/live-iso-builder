# live-iso-builder

Script to create linux-based OSs' Live Installable ISO. 

## Prerequisites :

* Perl >= 5 
* Perl Module Curses::UI
* xorriso
* squashfs-tools
* expect
* rsync

## History :

Many `Linux` users wanted and tried to make a custom live installable ISO from their running linux. There was a nice tool to do
all the fuss for you. But unfortunately that nice beautiful piece of software is not available any more. Many may have heard of 
it -`Remastersys`. 

Now that it is gone, it has become a terrible idea to make a custom ISO from your running linux. There are still several tools 
for it like - `Debian Live-tools`, `Refracta Installer and refracta snapshot`. You may find out some for yourself. There are 
also several tutorials on how to do such things. But after a few tries it may appear to you that none of them are generic 
enough to use with any Linux distro. They are mostly distro specific and have dependies sometimes unresolvable. And new 
systemd has made things even more complicated(may be its only for me).

As you can see the depedencies, all of them are distro independent and you can install them on any linux distro. The tool itself
is a simple perl script providing an interactive ncurses based UI. I dont intend to create a seperate GUI for it as it will 
only increase the dependencies make it less portable.

Besides the dependencies fact, I also like to KISS. Keeping it simple gives more customizing power. Some sceenshots are included 
here.

## Completion :

It is not yet complete. Not even tested with all distros. But thats the job for you - the `Linux Lovers`. Test it, make it 
complete.

## One request :

One request for all - `Please Don't Reinvent It`. If you ask me, I didn't do that. I just read some articles, looked out for 
stuffs that would do the job and ended up with tiredness of failure. So I observed the procedure and wrote a script to 
automate the work. If you find any bug using it please DON'T REINVENT or REWRITE the whole thing with a different name. You join 
the project on github, update the existing code to make it more complete. It is a free software and your work and time will
be voluntary. But your contribution will be noted.

## Screens :

![alt text] ( screens/welcome.png )
![alt text] ( screens/sync1.png )
![alt text] ( screens/sync1.png )
![alt text] ( screens/config.png )
![alt text] ( screens/vbox.png )

## How to :

Run build as super user to create ISO. Run clean as super user to clean up previous builds.

## More Info :

For more on it please browse the docs folder and read the docs there.

## License :

GPLv2

## Version Info :

### Current version - 0.0.1 :

* Creates a live ISO with a user `live` and password `live`. 
* Worked with Debian 32 bit OSs.
* No Live System installer included yet.
