# KitKit - A croos platform Objective-C 2.0 Kit
![KitKit Logo](https://dl.dropbox.com/u/1111373/kitkit.png)

KitKit is a cross platform Objective-C 2.0 environment for Linux and OSX.
KitKit is build on llvm, cmake, GNUstep and libobjc2.0

## llvm, cmake and GNUstep
[llvm], [cmake] and [GNUstep] are included as [submodules] of KitKit. So 
after cloning KitKit, you will need to grab its submodules as folllows:

    $ # be patient, this may take up to several minutes
    $ git submodule update --init

## Building and installing KitKit
After you have cloned the KitKit repository and its submodules, you need 
to execute the install script, in order to install KitKit on your machine. 
 
    $ # depending on your machine, this takes a lot of time
    $ # since KitKit builds everything from scratch
    $ ./build 
    $ cd dist 
    $ ./install /my/favorite/path/to/install/kitkit

The default installation path for KitKit is /opt/kitkit-1.0-rc1.
Feel free to change this path in the install script, if you need to install 
KitKit anywhere else. 

One final step is required before you can use KitKit...
Add KitKit's 'bin' directory to your $PATH variable:
    
    $ e.g. add this into ~/.bashrc or ~/.profile 
    $ export PATH=/opt/kitkit-1.0-rc1/bin:$PATH

## Compile and run Objective-C 2.0 code 
This repository comes with a demo project to show you how to build and
run an Objective-C 2.0 command line application with KitKit.

    $ cd demo/hello
    $ mkdir build
    $ cd build
    
    $ # generate the makefiles and build the demo project
    $ cmake ..
    $ make 

    $ # then run
    ./kitkit-hello


[llvm]: http://llvm.org 
[cmake]: http://www.cmake.org
[GNUstep]: http://www.gnustep.org
[submodules]: http://book.git-scm.com/5_submodules.html

