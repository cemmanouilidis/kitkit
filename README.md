# KitKit - A cross platform Objective-C 2.0 Kit
![KitKit Logo](https://dl.dropbox.com/u/1111373/kitkit.png)

KitKit is a cross platform Objective-C 2.0 environment for Linux and OSX.
KitKit is build on llvm, cmake, GNUstep and libobjc2.0


## Binary versions
You may want to download a binary version of KitKit, in order to save all the build time.
We provide binary versions of KitKit for Ubuntu (64bit only) and OSX 
    
### Ubuntu 64 bit (tested on Ubuntu 12.04 LTS and 12.10)
    $ wget https://dl.dropbox.com/u/1111373/KitKit/kitkit-1.0-rc1-linux-x64.tar.bz2
    $ tar -xvjf kitkit-1.0-rc1-linux-x64.tar.bz2
    $ cd kitkit-1.0-rc1-linux-x64
    $ ./install destination

### OSX 
    $ curl -O https://dl.dropbox.com/u/1111373/KitKit/kitkit-1.0-rc1-osx.tar.bz2
    $ tar -xvjf kitkit-1.0-rc1-osx.tar.bz2
    $ cd kitkit-1.0-rc1-osx
    $ ./install destination


## GMMagic - A KitKit Sample Project
GMMagic is a very thin Objective-C wrapper for the libmagic library.
The inlcuded demo command line application "magician" does basicacly the same job as the command "file --mime-type".
GMMagic was created using Xcode and the project was extended by adding GMMagic.kitkit + Makefile to demonstrate
a strategy for a cross platform Objective-C (Xcode) Projects.


### Build GMMagic on Ubuntu
    $ wget https://dl.dropbox.com/u/1111373/KitKit/GMMagic.tar.bz2
    $ tar -xvzf GMMagic.tar.bz2 
    $ make 
    $ # now run the sample application magician
    $ bin/magician GMMagicTests/data/*

### Build GMMagic on OSX
    $ curl -O https://dl.dropbox.com/u/1111373/KitKit/GMMagic.tar.bz2
    $ tar -xvzf GMMagic.tar.bz2 
    $ make 
    $ # now run the sample application magician
    $ bin/magician GMMagicTests/data/*

Please note, for OSX you still need to have Xcode installed, since KitKit requires Apple's Foundation Framework
to build your application.


## Building KitKit from scratch
### llvm, cmake and GNUstep
[llvm], [cmake] and [GNUstep] are included as [submodules] of KitKit. So 
after cloning KitKit, you will need to grab its submodules as folllows:

    $ # be patient, this may take up to several minutes
    $ git submodule update --init

### Building and installing KitKit
After you have cloned the KitKit repository and its submodules, you need 
to execute the install script, in order to install KitKit on your machine. 
 
    $ # depending on your machine, this takes a lot of time
    $ # since KitKit builds everything from scratch
    $ ./build 
    $ cd dist 
    $ ./install /my/favorite/path/to/install/kitkit

 
One final step is required before you can use KitKit...
Add KitKit's 'bin' directory to your $PATH variable:
    
    $ e.g. add this into ~/.bashrc or ~/.profile 
    $ export PATH=/my/favorite/path/to/install/kitkit/bin:$PATH



[llvm]: http://llvm.org 
[cmake]: http://www.cmake.org
[GNUstep]: http://www.gnustep.org
[submodules]: http://book.git-scm.com/5_submodules.html
