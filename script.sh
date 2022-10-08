#!/bin/bash
rm pkm1.txt pkm2.txt

tipo=Fire
echo "=-=-= BATALHA POKEMON =-=-="
touch pkm1.txt pkm2.txt
echo "Digite o primeiro Pokemon:"
read poke1
echo "Digite o segundo Pokemon:"
read poke2
while [ $poke1 = $poke2 ]; do
    echo "Seus pokemons são iguais, Que tipo de batalha é essa?"
    echo "ela acabaria em empate antes mesmo de começar tente novamente"
    echo "Digite o primeiro Pokemon Novamente:"
    read poke1
    echo "Digite o segundo Pokemon Novamente: "
    read poke2
done
echo "pokemon 1 escolhido foi:" $poke1
echo "pokemon 2 escolhido foi:" $poke2
echo "Boa Escolha Treinador Agora iremos Conferia seus status"
var_info_poke=$(grep -i $poke1 ./pkm.txt)
status_poke=$(grep -i $poke1 ./pkmStats.txt)
read -a info_poke <<<"$var_info_poke"
read -a status_geral <<<"$status_poke"

if [ ${info_poke[2]} = "Fire" ]; then
    fraquesa_poke=$(grep -i ${info_poke[2]} ./pkmAdv.txt)
    read -a fraquesa_info_poke <<<"$fraquesa_poke"
    sumario_poke_1="Numero:⠀${info_poke[0]}Nome:⠀${info_poke[1]}HP:⠀${status_geral[3]}Ataque:⠀${status_geral[4]}Velocidade:⠀${status_geral[8]}Tipo:⠀${info_poke[2]}fraquesas${fraquesa_info_poke[2]}"
elif [ ${info_poke[2]} = "rock" ]; then
    fraquesa_poke=$(grep -i ${info_poke[2]} ./pkmAdv.txt)
    read -a fraquesa_info_poke <<<"$fraquesa_poke"
    sumario_poke_1="Numero:⠀${info_poke[0]}Nome:⠀${info_poke[1]}HP:⠀${status_geral[3]}Ataque:⠀${status_geral[4]}Velocidade:⠀${status_geral[8]}Tipo:⠀${info_poke[2]}fraquesas${fraquesa_info_poke[2]}"
elif [ ${info_poke[2]} = "Ice" ]; then
    fraquesa_poke=$(grep -i ${info_poke[2]} ./pkmAdv.txt)
    read -a fraquesa_info_poke <<<"$fraquesa_poke"
    sumario_poke_1="Numero:⠀${info_poke[0]}Nome:⠀${info_poke[1]}HP:⠀${status_geral[3]}Ataque:⠀${status_geral[4]}Velocidade:⠀${status_geral[8]}Tipo:⠀${info_poke[2]}fraquesas${fraquesa_info_poke[2]}"
elif [ ${info_poke[2]} = "Grass" ]; then
    fraquesa_poke=$(grep -i ${info_poke[2]} ./pkmAdv.txt)
    read -a fraquesa_info_poke <<<"$fraquesa_poke"
    sumario_poke_1="Numero:⠀${info_poke[0]}Nome:⠀${info_poke[1]}HP:⠀${status_geral[3]}Ataque:⠀${status_geral[4]}Velocidade:⠀${status_geral[8]}Tipo:⠀${info_poke[2]}fraquesas${fraquesa_info_poke[2]}"
elif [ ${info_poke[2]} = "Dragon" ]; then
    fraquesa_poke=$(grep -i ${info_poke[2]} ./pkmAdv.txt)
    read -a fraquesa_info_poke <<<"$fraquesa_poke"
    sumario_poke_1="Numero:⠀${info_poke[0]}Nome:⠀${info_poke[1]}HP:⠀${status_geral[3]}Ataque:⠀${status_geral[4]}Velocidade:⠀${status_geral[8]}Tipo:⠀${info_poke[2]}fraquesas${fraquesa_info_poke[2]}"
elif [ ${info_poke[2]} = "Dark" ]; then
    fraquesa_poke=$(grep -i ${info_poke[2]} ./pkmAdv.txt)
    read -a fraquesa_info_poke <<<"$fraquesa_poke"
    sumario_poke_1="Numero:⠀${info_poke[0]}Nome:⠀${info_poke[1]}HP:⠀${status_geral[3]}Ataque:⠀${status_geral[4]}Velocidade:⠀${status_geral[8]}Tipo:⠀${info_poke[2]}fraquesas${fraquesa_info_poke[2]}"
elif [ ${info_poke[2]} = "Psychic" ]; then
    fraquesa_poke=$(grep -i ${info_poke[2]} ./pkmAdv.txt)
    read -a fraquesa_info_poke <<<"$fraquesa_poke"
    sumario_poke_1="Numero:⠀${info_poke[0]}Nome:⠀${info_poke[1]}HP:⠀${status_geral[3]}Ataque:⠀${status_geral[4]}Velocidade:⠀${status_geral[8]}Tipo:⠀${info_poke[2]}fraquesas${fraquesa_info_poke[2]}"
elif [ ${info_poke[2]} = "Bug" ]; then
    fraquesa_poke=$(grep -i ${info_poke[2]} ./pkmAdv.txt)
    read -a fraquesa_info_poke <<<"$fraquesa_poke"
    sumario_poke_1="Numero:⠀${info_poke[0]}Nome:⠀${info_poke[1]}HP:⠀${status_geral[3]}Ataque:⠀${status_geral[4]}Velocidade:⠀${status_geral[8]}Tipo:⠀${info_poke[2]}fraquesas${fraquesa_info_poke[2]}"
elif [ ${info_poke[2]} = "Flying" ]; then
    fraquesa_poke=$(grep -i ${info_poke[2]} ./pkmAdv.txt)
    read -a fraquesa_info_poke <<<"$fraquesa_poke"
    sumario_poke_1="Numero:⠀${info_poke[0]}Nome:⠀${info_poke[1]}HP:⠀${status_geral[3]}Ataque:⠀${status_geral[4]}Velocidade:⠀${status_geral[8]}Tipo:⠀${info_poke[2]}fraquesas${fraquesa_info_poke[2]}"
elif [ ${info_poke[2]} = "Steel" ]; then
    fraquesa_poke=$(grep -i ${info_poke[2]} ./pkmAdv.txt)
    read -a fraquesa_info_poke <<<"$fraquesa_poke"
    sumario_poke_1="Numero:⠀${info_poke[0]}Nome:⠀${info_poke[1]}HP:⠀${status_geral[3]}Ataque:⠀${status_geral[4]}Velocidade:⠀${status_geral[8]}Tipo:⠀${info_poke[2]}fraquesas${fraquesa_info_poke[2]}"
elif [ ${info_poke[2]} = "Fighting" ]; then
    fraquesa_poke=$(grep -i ${info_poke[2]} ./pkmAdv.txt)
    read -a fraquesa_info_poke <<<"$fraquesa_poke"
    sumario_poke_1="Numero:⠀${info_poke[0]}Nome:⠀${info_poke[1]}HP:⠀${status_geral[3]}Ataque:⠀${status_geral[4]}Velocidade:⠀${status_geral[8]}Tipo:⠀${info_poke[2]}fraquesas${fraquesa_info_poke[2]}"
elif [ ${info_poke[2]} = "Ground" ]; then
    fraquesa_poke=$(grep -i ${info_poke[2]} ./pkmAdv.txt)
    read -a fraquesa_info_poke <<<"$fraquesa_poke"
    sumario_poke_1="Numero:⠀${info_poke[0]}Nome:⠀${info_poke[1]}HP:⠀${status_geral[3]}Ataque:⠀${status_geral[4]}Velocidade:⠀${status_geral[8]}Tipo:⠀${info_poke[2]}fraquesas${fraquesa_info_poke[2]}"
elif [ ${info_poke[2]} = "Ghost" ]; then
    fraquesa_poke=$(grep -i ${info_poke[2]} ./pkmAdv.txt)
    read -a fraquesa_info_poke <<<"$fraquesa_poke"
    sumario_poke_1="Numero:⠀${info_poke[0]}Nome:⠀${info_poke[1]}HP:⠀${status_geral[3]}Ataque:⠀${status_geral[4]}Velocidade:⠀${status_geral[8]}Tipo:⠀${info_poke[2]}fraquesas${fraquesa_info_poke[2]}"
elif [ ${info_poke[2]} = "Poison" ]; then
    fraquesa_poke=$(grep -i ${info_poke[2]} ./pkmAdv.txt)
    read -a fraquesa_info_poke <<<"$fraquesa_poke"
    sumario_poke_1="Numero:⠀${info_poke[0]}Nome:⠀${info_poke[1]}HP:⠀${status_geral[3]}Ataque:⠀${status_geral[4]}Velocidade:⠀${status_geral[8]}Tipo:⠀${info_poke[2]}fraquesas${fraquesa_info_poke[2]}"
elif [ ${info_poke[2]} = "Fairy" ]; then
    fraquesa_poke=$(grep -i ${info_poke[2]} ./pkmAdv.txt)
    read -a fraquesa_info_poke <<<"$fraquesa_poke"
    sumario_poke_1="Numero:⠀${info_poke[0]}Nome:⠀${info_poke[1]}HP:⠀${status_geral[3]}Ataque:⠀${status_geral[4]}Velocidade:⠀${status_geral[8]}Tipo:⠀${info_poke[2]}fraquesas${fraquesa_info_poke[2]}"
elif [ ${info_poke[2]} = "Electric" ]; then
    fraquesa_poke=$(grep -i ${info_poke[2]} ./pkmAdv.txt)
    read -a fraquesa_info_poke <<<"$fraquesa_poke"
    sumario_poke_1="Numero:⠀${info_poke[0]}Nome:⠀${info_poke[1]}HP:⠀${status_geral[3]}Ataque:⠀${status_geral[4]}Velocidade:⠀${status_geral[8]}Tipo:⠀${info_poke[2]}fraquesas${fraquesa_info_poke[2]}"
elif [ ${info_poke[2]} = "Normal" ]; then
    fraquesa_poke=$(grep -i ${info_poke[2]} ./pkmAdv.txt)
    read -a fraquesa_info_poke <<<"$fraquesa_poke"
    sumario_poke_1="Numero:⠀${info_poke[0]}Nome:⠀${info_poke[1]}HP:⠀${status_geral[3]}Ataque:⠀${status_geral[4]}Velocidade:⠀${status_geral[8]}Tipo:⠀${info_poke[2]}fraquesas${fraquesa_info_poke[2]}"
elif [ ${info_poke[2]} = "Water" ]; then
    fraquesa_poke=$(grep -i ${info_poke[2]} ./pkmAdv.txt)
    read -a fraquesa_info_poke <<<"$fraquesa_poke"
    sumario_poke_1="Numero:⠀${info_poke[0]}Nome:⠀${info_poke[1]}HP:⠀${status_geral[3]}Ataque:⠀${status_geral[4]}Velocidade:⠀${status_geral[8]}Tipo:⠀${info_poke[2]}fraquesas${fraquesa_info_poke[2]}"
else
   echo "Algo de Errado não está certo por favor reinicie o sistema"
fi

printf $sumario_poke_2 >>pkm2.txt
var_info_poke_2=$(grep -i $poke2 ./pkm.txt)
status_poke_2=$(grep -i $poke2 ./pkmStats.txt)
read -a info_poke_2 <<<"$var_info_poke_2"
read -a status_geral_2 <<<"$status_poke_2"

if [ ${info_poke_2[2]} = "Fire" ]; then
    fraquesa_poke_2=$(grep -i ${info_poke[2]} ./pkmAdv.txt)
    read -a fraquesa_info_poke <<<"$fraquesa_poke_2"
    sumario_poke_2="Numero:⠀${info_poke[0]}Nome:⠀${info_poke[1]}HP:⠀${status_geral[3]}Ataque:⠀${status_geral[4]}Velocidade:⠀${status_geral[8]}Tipo:⠀${info_poke[2]}fraquesas${fraquesa_info_poke[2]}"
elif [ ${info_poke[2]} = "rock" ]; then
    fraquesa_poke=$(grep -i ${info_poke[2]} ./pkmAdv.txt)
    read -a fraquesa_info_poke <<<"$fraquesa_poke"
    sumario_poke_1="Numero:⠀${info_poke[0]}Nome:⠀${info_poke[1]}HP:⠀${status_geral[3]}Ataque:⠀${status_geral[4]}Velocidade:⠀${status_geral[8]}Tipo:⠀${info_poke[2]}fraquesas${fraquesa_info_poke[2]}"
elif [ ${info_poke[2]} = "Ice" ]; then
    fraquesa_poke=$(grep -i ${info_poke[2]} ./pkmAdv.txt)
    read -a fraquesa_info_poke <<<"$fraquesa_poke"
    sumario_poke_1="Numero:⠀${info_poke[0]}Nome:⠀${info_poke[1]}HP:⠀${status_geral[3]}Ataque:⠀${status_geral[4]}Velocidade:⠀${status_geral[8]}Tipo:⠀${info_poke[2]}fraquesas${fraquesa_info_poke[2]}"
elif [ ${info_poke[2]} = "Grass" ]; then
    fraquesa_poke=$(grep -i ${info_poke[2]} ./pkmAdv.txt)
    read -a fraquesa_info_poke <<<"$fraquesa_poke"
    sumario_poke_1="Numero:⠀${info_poke[0]}Nome:⠀${info_poke[1]}HP:⠀${status_geral[3]}Ataque:⠀${status_geral[4]}Velocidade:⠀${status_geral[8]}Tipo:⠀${info_poke[2]}fraquesas${fraquesa_info_poke[2]}"
elif [ ${info_poke[2]} = "Dragon" ]; then
    fraquesa_poke=$(grep -i ${info_poke[2]} ./pkmAdv.txt)
    read -a fraquesa_info_poke <<<"$fraquesa_poke"
    sumario_poke_1="Numero:⠀${info_poke[0]}Nome:⠀${info_poke[1]}HP:⠀${status_geral[3]}Ataque:⠀${status_geral[4]}Velocidade:⠀${status_geral[8]}Tipo:⠀${info_poke[2]}fraquesas${fraquesa_info_poke[2]}"
elif [ ${info_poke[2]} = "Dark" ]; then
    fraquesa_poke=$(grep -i ${info_poke[2]} ./pkmAdv.txt)
    read -a fraquesa_info_poke <<<"$fraquesa_poke"
    sumario_poke_1="Numero:⠀${info_poke[0]}Nome:⠀${info_poke[1]}HP:⠀${status_geral[3]}Ataque:⠀${status_geral[4]}Velocidade:⠀${status_geral[8]}Tipo:⠀${info_poke[2]}fraquesas${fraquesa_info_poke[2]}"
elif [ ${info_poke[2]} = "Psychic" ]; then
    fraquesa_poke=$(grep -i ${info_poke[2]} ./pkmAdv.txt)
    read -a fraquesa_info_poke <<<"$fraquesa_poke"
    sumario_poke_1="Numero:⠀${info_poke[0]}Nome:⠀${info_poke[1]}HP:⠀${status_geral[3]}Ataque:⠀${status_geral[4]}Velocidade:⠀${status_geral[8]}Tipo:⠀${info_poke[2]}fraquesas${fraquesa_info_poke[2]}"
elif [ ${info_poke[2]} = "Bug" ]; then
    fraquesa_poke=$(grep -i ${info_poke[2]} ./pkmAdv.txt)
    read -a fraquesa_info_poke <<<"$fraquesa_poke"
    sumario_poke_1="Numero:⠀${info_poke[0]}Nome:⠀${info_poke[1]}HP:⠀${status_geral[3]}Ataque:⠀${status_geral[4]}Velocidade:⠀${status_geral[8]}Tipo:⠀${info_poke[2]}fraquesas${fraquesa_info_poke[2]}"
elif [ ${info_poke[2]} = "Flying" ]; then
    fraquesa_poke=$(grep -i ${info_poke[2]} ./pkmAdv.txt)
    read -a fraquesa_info_poke <<<"$fraquesa_poke"
    sumario_poke_1="Numero:⠀${info_poke[0]}Nome:⠀${info_poke[1]}HP:⠀${status_geral[3]}Ataque:⠀${status_geral[4]}Velocidade:⠀${status_geral[8]}Tipo:⠀${info_poke[2]}fraquesas${fraquesa_info_poke[2]}"
elif [ ${info_poke[2]} = "Steel" ]; then
    fraquesa_poke=$(grep -i ${info_poke[2]} ./pkmAdv.txt)
    read -a fraquesa_info_poke <<<"$fraquesa_poke"
    sumario_poke_1="Numero:⠀${info_poke[0]}Nome:⠀${info_poke[1]}HP:⠀${status_geral[3]}Ataque:⠀${status_geral[4]}Velocidade:⠀${status_geral[8]}Tipo:⠀${info_poke[2]}fraquesas${fraquesa_info_poke[2]}"
elif [ ${info_poke[2]} = "Fighting" ]; then
    fraquesa_poke=$(grep -i ${info_poke[2]} ./pkmAdv.txt)
    read -a fraquesa_info_poke <<<"$fraquesa_poke"
    sumario_poke_1="Numero:⠀${info_poke[0]}Nome:⠀${info_poke[1]}HP:⠀${status_geral[3]}Ataque:⠀${status_geral[4]}Velocidade:⠀${status_geral[8]}Tipo:⠀${info_poke[2]}fraquesas${fraquesa_info_poke[2]}"
elif [ ${info_poke[2]} = "Ground" ]; then
    fraquesa_poke=$(grep -i ${info_poke[2]} ./pkmAdv.txt)
    read -a fraquesa_info_poke <<<"$fraquesa_poke"
    sumario_poke_1="Numero:⠀${info_poke[0]}Nome:⠀${info_poke[1]}HP:⠀${status_geral[3]}Ataque:⠀${status_geral[4]}Velocidade:⠀${status_geral[8]}Tipo:⠀${info_poke[2]}fraquesas${fraquesa_info_poke[2]}"
elif [ ${info_poke[2]} = "Ghost" ]; then
    fraquesa_poke=$(grep -i ${info_poke[2]} ./pkmAdv.txt)
    read -a fraquesa_info_poke <<<"$fraquesa_poke"
    sumario_poke_1="Numero:⠀${info_poke[0]}Nome:⠀${info_poke[1]}HP:⠀${status_geral[3]}Ataque:⠀${status_geral[4]}Velocidade:⠀${status_geral[8]}Tipo:⠀${info_poke[2]}fraquesas${fraquesa_info_poke[2]}"
elif [ ${info_poke[2]} = "Poison" ]; then
    fraquesa_poke=$(grep -i ${info_poke[2]} ./pkmAdv.txt)
    read -a fraquesa_info_poke <<<"$fraquesa_poke"
    sumario_poke_1="Numero:⠀${info_poke[0]}Nome:⠀${info_poke[1]}HP:⠀${status_geral[3]}Ataque:⠀${status_geral[4]}Velocidade:⠀${status_geral[8]}Tipo:⠀${info_poke[2]}fraquesas${fraquesa_info_poke[2]}"
elif [ ${info_poke[2]} = "Fairy" ]; then
    fraquesa_poke=$(grep -i ${info_poke[2]} ./pkmAdv.txt)
    read -a fraquesa_info_poke <<<"$fraquesa_poke"
    sumario_poke_1="Numero:⠀${info_poke[0]}Nome:⠀${info_poke[1]}HP:⠀${status_geral[3]}Ataque:⠀${status_geral[4]}Velocidade:⠀${status_geral[8]}Tipo:⠀${info_poke[2]}fraquesas${fraquesa_info_poke[2]}"
elif [ ${info_poke[2]} = "Electric" ]; then
    fraquesa_poke=$(grep -i ${info_poke[2]} ./pkmAdv.txt)
    read -a fraquesa_info_poke <<<"$fraquesa_poke"
    sumario_poke_1="Numero:⠀${info_poke[0]}Nome:⠀${info_poke[1]}HP:⠀${status_geral[3]}Ataque:⠀${status_geral[4]}Velocidade:⠀${status_geral[8]}Tipo:⠀${info_poke[2]}fraquesas${fraquesa_info_poke[2]}"
elif [ ${info_poke[2]} = "Normal" ]; then
    fraquesa_poke=$(grep -i ${info_poke[2]} ./pkmAdv.txt)
    read -a fraquesa_info_poke <<<"$fraquesa_poke"
    sumario_poke_1="Numero:⠀${info_poke[0]}Nome:⠀${info_poke[1]}HP:⠀${status_geral[3]}Ataque:⠀${status_geral[4]}Velocidade:⠀${status_geral[8]}Tipo:⠀${info_poke[2]}fraquesas${fraquesa_info_poke[2]}"
elif [ ${info_poke[2]} = "Water" ]; then
    fraquesa_poke=$(grep -i ${info_poke[2]} ./pkmAdv.txt)
    read -a fraquesa_info_poke <<<"$fraquesa_poke"
    sumario_poke_1="Numero:⠀${info_poke[0]}Nome:⠀${info_poke[1]}HP:⠀${status_geral[3]}Ataque:⠀${status_geral[4]}Velocidade:⠀${status_geral[8]}Tipo:⠀${info_poke[2]}fraquesas${fraquesa_info_poke[2]}"
else
   echo "Algo de Errado não está certo por favor reinicie o sistema"
fi

printf $sumario_poke_1 >>pkm1.txt




#grep $poke1 pkmStats.txt >>pkm1.txt
#grep $poke2 pkmStats.txt >>pkm2.txt
#grep $poke1 pkm.txt >>pkm1.txt
#grep $poke2 pkm.txt >>pkm2.txt
#echo "=-=-=pokemons escolhidos=-=-="
#echo "numero			pokemon         HP    Attack  Defense  Sp.Attack  Sp.Defense  Speed  Total   Average "
head -1 ./pkm1.txt
head -1 ./pkm2.txt
