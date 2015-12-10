
                              .;:**'
                              `
  .:XHHHHk.              db.   .;;.     dH  MX
oMMMMMMMMMMM        MM  dMMP :MMMMMR   MMM  MR      ~MRMN
QMMMMb  'MMX        NMMMMP !MX'  M~   MMM MMM  .oo. XMMM 'MMM
  `MMM.   )M> :X!Hk. QMMM   XMQ.o'  .  MMMMMMM X?XMMM MMM>!MMP
   'MMMb.dM! XM M'?M QMMMMX.`MMMMMMMM~ MM MHM XM    MX MMXXMM
    ~MMMMM~ XMM. .XM XM`'MMMb.~*?**~ .MMX M t MMbooMM XMMMMMP
     ?MMM>  YMMMMMM! MM   `?MMRb.    `'''   !L'MMMMM XM IMMM
      MMMX   'MMMM'  LM       ~%:           !Mh.''' dMI IMMP
      'MMM.                                             IMX
       ~M!M                                             IMP




## PoCamon Instructions

You can compile and run the game yourself by:
cs3110 compile -p str game.ml
cs3110 run game.ml


Contributors:
Troy Joseph https://github.com/troyjoseph
Jesse Lupica https://github.com/jesselupica
Jimmy Stoyell https://github.com/JamesSto
Declan Sander https://github.com/DecSander

## How To Play

To play the game, resize your window to 80x25, select if you want to play
a human, your rival, or the Elite 7. Playing against a human will allow two
people to control individual players. Playing your rival will start a single
battle against a single AI-controlled opponent. Playing the Elite 7 will give
you a single team you will need to use to defeat 7 players consecutively (health
will restore between battles)

The game has tab completion and takes into account aspects of the original
pokemon including super effectivenes, status effects, pocamon stats charging
moves, and many more.

On any turn, you can use your current pocamon's move by going into Fight
and using the move. Alternatively, you can switch pocamon by going into
PoCamon and switching pocamon. You can also check your Bag at any time
to see if there's anything in there or try to Run. The goal of the game
is to reduce all of your opponent's pocamon to 0 health.

Different moves do different things - some affect the stats of your own pocamon
or your opponents, lowering or increasing speed, defense, special defense,
attack, or special attack. Some inflict straight damage. Some inflict a status
condition on the opponent - causing him to be unable to move, to lose health
each turn, or other, special effects! Experiment and find what works! (Or cheat
and look at pocadex.ml to see what each move does)

Note: The last few trainers in the Elite 7 are extremely difficult, don't get
too upset if you can't beat all of them.

## Testing

To test the program, comment out lines 12-13 in io.ml and line 458 in
>>>>>>> 0d7a0cb9cb1597d6e0a12fefce3952a7f2d66a42
game.ml, then run:

cs3110 compile -p str game.ml
cs3110 compile -p str tests.ml
cs3110 test tests.ml

Remember to uncomment those lines out if you want to play the game normally
again!

NOTE:

There is no types.ml, only types.mli

## Credits:

ASCII Art generated using: http://www.glassgiant.com/ascii/

Pokemon sprites from: http://www.pokemondb.net

Splash screen from: http://ascii.co.uk/art/pokemon

Terminal autocorrect setup script from: Niki Yoshiuchi at
  http://stackoverflow.com/questions/4130048/recognizing-arrow-keys-with-stdin

Move and pokemon data retrieved from:
  https://github.com/pret/pokered
  https://github.com/pret/pokecrystal

Much information about game mechanics from:
  http://bulbapedia.bulbagarden.net
  http://pokemon.wikia.com

