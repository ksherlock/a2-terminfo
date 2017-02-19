# Apple II Terminal Info

These are terminfo entries for Apple II terminals:

* GS/OS Console
* GNO Console
* Apple II Extended 80 column card
* ProTerm Special Emulation

Plus a .bashrc file to make them more usable in Unix.

## Why?  

Well, the main reason is that I wrote a terminal emulator that emulates
the previously mentioned terminals. As such, I needed terminfo entries
to be useful.

These are largely based on the GNO/ME /etc/termcap file but some errors
have been fixed.

## Installation

    git clone https://github.com/ksherlock/a2-terminfo.git
    cd a2-terminfo
    make install

(Will install to your ~/.terminfo directory)

## Errors

When in doubt, run `tput reset`

A lot of software ignores your terminfo and uses hard-coded vt100/ansi
escape sequences.  `tmux` or `screen`  can be used as a vt100 emulator.  
Or use better software.

Most control codes have a meaning for Apple II terminals. Therfore displaying
control codes (such as `cat`ting binary files) is likely to have unanticipated
consequences.  Refer to previous instructions on `tput reset`.  One particular
example that deserves mentioning: `ESC` activates mouse-text in the GNO 
console. `ESC` is also THE vt100 control code. 

`less` (and `more`, when it's `less`) strips non-vt100 control codes.  Use the
`-r` (raw) flag if you want them to pass through.


