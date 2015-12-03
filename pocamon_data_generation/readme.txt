This folder contains programs, data, and procedurally generated code.

Various python scripts were created to process information from websites,
assembly files, and images. Some files were combined to create other files that
would be easier to parse using Python.

First, ascii_generator.py uses sprites from pokemondb.net to generate a file
containing ascii art, ascii_art.txt with each pokemon using glassgiant.com

Then, createPocaDex.py takes in ascii_art.txt, base_stats.asm, and
evos_attacks.asm and creates the pocadex.ml file. This is a file containing
procedurally generated OCaml records of each dex_pocamon that will be needed.

Finally, moves_gen.py takes in effects.txt and moves.asm to create a file,
moves.ml, containing properly formatted moves records stored in a hashtable.

After this is completed, pocadex.ml and moves.ml are combined into one file,
pocaDex.ml, and moved into the main directory for use.