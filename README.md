## This is very begining of LinuxCNC hal syntax highlight for VIM

As I had search for such file to configure LinuxCNC and didn't find it on the WEB I did it quickly for my personal tasks and shared it to the WEB. You are free to add\change and do any other changes you think you need without restriction except those that stated in license GNU GPL v3.

The installation guide text was get from http://wiki.linuxcnc.org/cgi-bin/wiki.pl?Highlighting_In_Vim

**Author** Pavel Ruban http://pavelruban.org

**Screenshot**
![alt_tag](https://github.com/pavelruban-org/vim-linuxcnc-hal-syntax/blob/master/screenshot.png)

**Installation**

make yourself a ~/.vim/ directory
make a syntax directory in there
save upload:linuxcnc-hal.vim into ~/.vim/syntax/
save upload:filetype.vim into ~/.vim/ (or merge with your existing one, if any):
open, or restart vim
open any files with *.hal extensions, and it should auto-highlight them


You can also force highlighting with:

  :set syntax=linuxcnc-hal
