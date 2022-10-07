#!/bin/bash
rm pkm1.txt  pkm2.txt
echo "=-=-= BATALHA POKEMON =-=-="
touch pkm1.txt pkm2.txt
echo "Digite o primeiro Pokemon:"
read poke1
echo "Digite o segundo Pokemon:"
read poke2
echo "pokemon 1 escolhido foi:" $poke1 
echo "pokemon 2 escolhido foi:" $poke2
grep $poke1 pkmStats.txt >> pkm1.txt
grep $poke2 pkmStats.txt >> pkm2.txt
if[[]]






