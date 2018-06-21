## Firered ASM Routines

This repo collects a number of miscellaneous asm hacks that have been created for Pokemon Fire Red (V1.0). They've been modified from their original versions in order to support easy installation with `armips`. Armips is a specialized assembler that is particularly well suited for rom hacking purposes. You can get it [here](https://github.com/Kingcom/armips/releases).

Every routine has an accompanying `.md` file that will give you more information on what it does, who originally made it, and specialized installation instructions (if applicable).

Generally, the installation will involve opening the `whatever.asm` file to touch up some definitions - for example, the filename of the ROM that it'll be applied to, or the offset to put the code. Then you will run `armips whatever.asm`. The input ROM will not be modified; instead, there will be a modified copy (`test.gba` by default, though that's customizable).

### List of routines

* [BW2 Repel System](./repelprompt.md)