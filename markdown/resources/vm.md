---
title: A virtual machine for homeworks
---

To make it easier for everyone I made a virtual machine using
VirtualBox that has Linux, VS Code, git, and OCaml already installed
and configured on it. All you have to do is download it and import it
into Virtual Box. Here I give some instructions on how to do that.

1. Install VirtualBox at
   [https://www.virtualbox.org](https://www.virtualbox.org). 

2. Download the prebuilt virtual machine from
   [here](http://learn-ocaml.hde.design/PLVM.ova.zip).  Save this to
   Downloads or some temporary location, because after you are done
   importing the virtual machine into VirtualBox you can delete this
   file.  Make sure and decompress the file before moving on.

3. Open VirtualBox. Then go to File then Import Appliance. In the File
   box click the icon on the right, and then navigate to the OVA file
   you just decompressed in the previous step.

4. Then click Next then Finish. At this point you just wait for the
   import to complete. Your screen should look like the following:

   <img width="80%" src="/plweb/includes/images/vm-importing.png">   

5. When the import finishes your screen should look like this:

    <img width="70%" src="/plweb/includes/images/vm-finished-importing.png">      

6. Before booting you will need to make sure the settings of the
   machine are configured property for your computer. Click Settings.
   Then System.

7. Drag the Base Memory toggle into the green if it is not already.
   Don't decrease it too much or the machine will run poorly. 

8. Now click Display. Change the scale factor to 100%. 

9. Click ok.

10. Now start the machine by clicking Start. You should see the Ubuntu
    splash screen booting up. 

11. Once it's booted up your screen should look like:

    <img width="70%" src="/plweb/includes/images/UbuntuScreen.png">

12. You will see the icon to open VS Code at the top left, and right
    underneath it is the terminal program for issuing your git
    commands.

13. Open the terminal program.

14. Now go and complete the [Git tutorial](/plweb/git.html). This will
    configure git properly.