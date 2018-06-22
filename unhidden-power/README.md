## Unhidden Power

This routine makes the game calculate and display the actual type of Hidden Power in battle and in status screens. If, for example, a Pokemon's Hidden Power type is Electric, it will display as an Electric-type move in the same way as Thunderbolt or any other Electric-type move.

### Installation

There's the standard configuration for filenames and where to insert the code, but there are some additional options.

Firstly, `moves`. `moves` is the array of moves located in an unmodified ROM at `0x08250C04`; if this table has been repointed, update the definition.

Secondly, `change_hp_static_type`. `change_hp_static_type` is a boolean (`true` or `false`) to update the type of Hidden Power in its entry in the `moves` array to be ???-type instead of Normal-type. This is entirely aesthetic - it merely affects the TM Case, as in that context, there is no associated Pokemon to calculate the type for. If it is `false`, it will show up as a Normal-type TM, and for `true` it is a ???-type TM.

Once everything has been configured, run `/path/to/armips unhidden-power/main.asm`.