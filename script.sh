#!/bin/bash
rm pkm1.txt pkm2.txt
echo "=-=-= BATALHA POKEMON =-=-="
    touch pkm1.txt pkm2.txt
echo "Digite o primeiro Pokemon:"
    read poke1
echo "Digite o segundo Pokemon:"
    read poke2
echo "pokemon 1 escolhido foi:" $poke1
echo "pokemon 2 escolhido foi:" $poke2
grep $poke1  pkmStats.txt >>pkm1.txt
grep $poke2 pkmStats.txt >>pkm2.txt
grep $poke1  pkm.txt >>pkm1.txt
grep $poke2 pkm.txt >>pkm2.txt
echo "=-=-=pokemons escolhidos=-=-="
echo "numero			pokemon         HP    Attack  Defense  Sp.Attack  Sp.Defense  Speed  Total   Average "
head -1 ./pkm1.txt 
head -1 ./pkm2.txt