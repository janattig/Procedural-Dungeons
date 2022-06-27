# Procedural Dungeons // pd_math

Math capabilities for the Procedural Dungeons datapack. Includes some constants and a linear congruential generator ([LCG](https://en.wikipedia.org/wiki/Linear_congruential_generator)), implemented with scoreboard values in the scoreboard `pd_math`. It uses the values `a=1664525` and `c=1013904223` as well as the built-in integer overflow when performing the `mod m` operation.

For accessing the LCG, the following functions are provided:
1. **Seeding the LCG** can be done with the function
    ```mcfunction
    function pd_math:rand/seed
    ```
    which uses the current gametime as a seed.

2. **Generating a new random number** is performed in the function
    ```mcfunction
    function pd_math:rand/update
    ```
    This function stores the next successive random integer in the entire integer range in the scoreboard value `%LCG_current pd_math`.

    For practical purposes, mostly an integer in a certain range is desired. Such range can be set using some scoreboard operations, e.g.
    ```mcfunction
    scoreboard players set %LCG_rand_min 4
    scoreboard players set %LCG_rand_max 12
    ```
    for generating a random number between 4 and 12 (which are both included). The random number in this range can then be accessed by calling
    ```mcfunction
    scoreboard players get %LCG_rand
    ```
