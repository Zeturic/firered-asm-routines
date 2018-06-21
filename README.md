## Firered ASM Routines

This repo collects a number of miscellaneous asm hacks that have been created for Pokemon Fire Red (V1.0). They've been modified from their original versions in order to support easy installation with `armips`. Armips is a specialized assembler that is particularly well suited for rom hacking purposes. You can get it [here](https://github.com/Kingcom/armips/releases).

Every routine has an accompanying `.md` file that will give you more information on what it does, who originally made it, and specialized installation instructions (if applicable).

Generally, the installation will involve opening the `whatever.asm` file to touch up some definitions - for example, the offset to put the code at - then you will run `/path/to/armips whatever.asm`. Then you're done.

A hex editor is entirely uneccesary - rather than outputting a binary file that must be manually inserted into your ROM, these routines will make a modified copy of your ROM with the routine applied. Each of the routines assume that your source ROM will be `firered.gba` and your target ROM will be `test.gba`, though both filenames can be changed when you open `whatever.asm`.

### List of routines

* [BW2 Repel System](./repelprompt.md)
* [Player Turns to Face Trainers](./trainerface.md)
* [Stats on the Pokédex Screen](./pokedex-stats.md)