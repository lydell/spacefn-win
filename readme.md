Overview
========

spacefn-win is an implementation of the [SpaceFN] keyboard layout by spiceBar. It is an [AutoHotkey]
script.


Installation
============

There are two different ways to go.

The simplest option is to download the compiled file spacefn-win.exe and run it. No installation
required.

The other option is to install [AutoHotkey] 1.1.13.00+ (if you haven't already), download the whole
project and runt the spacefn-win.ahk file using AutoHotkey. Use this option if you're already using
AutoHotkey or want to customize the layout.

Either way, put a shortcut to spacefn-win.(ahk|exe) in the Autostart folder to activate the layout
automatically when you log in to your computer. (It won't work in the login screen.)


Command-line options
====================

The script accepts any number of command line options of the form `option=value`. The following
options are available:

- `swap_backtick_escape`: `true` or `false` (default)
- [`delay`, `timeout` and `doublePress`][dual-config]: Integer (advanced)

Examples:

- `autohotkey spacefn-win.ahk delay=70 swap_backtick_escape=true`
- `spacefn-win.exe delay=70 swap_backtick_escape=true`


Notes
=====

The script assumes that you're using the en-US QWERTY layout. If you're using some other layout, you
unfortunately might have to modify the script. It should be pretty straight-forward, though. Don't
hesitate to ask for help with this, if needed. If you find a way to make the script layout-agnostic,
please tell me!

The [SpaceFN] post mentions a gaming mode. As far as I'm concerned, using AHK and games at the same
time is not such a good idea.


License
=======

[MIT Licensed](LICENSE)


[AutoHotkey]:  http://autohotkey.com/
[dual-config]: https://github.com/lydell/dual#configuration
[SpaceFN]:     #
