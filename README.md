# rib-rub v0.01, April 13, 2013.

This is just my attempt to understand the utility of the native Ribbon control in Windows using amd64 assembly language, the FASM dialect.

More documentation will be added as it develops.


Initially, my ignorance was documented at:
http://board.flatassembler.net/topic.php?t=15316

Mainly, I discovered the difficulty of using my existing tools to generate 32-bit BMP image files, and my dislike for editing XML by hand. Also, there appears to be conflicts between the internal dialog handler in Windows and the ribbon control - I have since switched to using a window as the parent and many strange crashes just disappeared. So, I don't recommend using a application dialog as the base.

Luckily, I stumbled upon Erik Van Bilsen's Ribbon Designer. If you are on the same quest then start with his concise overview and utility. Even if without Delphi it's still the best thing availble. Note: you will need a fake EXE to present as the Delphi compiler - any DCC32.EXE will do. ;)
http://www.bilsen.com/windowsribbon/index.shtml




To Build:

1) Set paths in build.cmd to point to UICC, RC, FASM
2) execute build.cmd


A note about the coding style: I do not use the supplied FASM macros for 64-bit coding, and have developed my own syle. An approach which helps me stay at the instruction level, but requires mindfulness of proceedural scoping to maintain stack alignment. It's much easier than it sounds with practice.

This work is licensed under a Creative Commons
Attribution-ShareAlike 3.0 Unported License.
http://creativecommons.org/licenses/by-sa/3.0/
