## Gender-specific Evolutionary Stones

This adds evolution methods where an evolutionary stone will only trigger when the Pokemon is a particular gender, like the Dawn Stone for Kirlia -> Gallade and Snorunt -> Froslass.

### Installation

There's the standard configuration for filenames and where to insert the code, but there are some additional options.

If you've expanded your evolution table to support more than `5` evolutions per Pokemon, adjust the definition `EVOLUTIONS_PER_POKEMON`.

To adjust the evolution ids for Male Stone Evolutions and Female Stone evolutions, modify the definitions of `MALE_STONE` and `FEMALE_STONE`. For example, the evolution id of regular Stone evolutions is 7 and regular level-up evolutions is id 4. `MALE_STONE` and `FEMALE_STONE` default to 0x30 and 0x31, respectively.

Once everything has been configured, run `/path/to/armips dawn-stone/main.asm`.