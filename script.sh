#!/bin/bash

# infos se vcs do gp estiverem perdidos
# <<< Em vez de digitar texto, você fornece uma sequência de texto pré-criada a um programa
#  -i, --ignore-case         ignore case distinctions ignora distinção de casas

# remove os arquivos para evitar residuos
rm pkm1.txt pkm2.txt

# inicio da interação com "jogador"
echo "══════════BEM VINDO AO POKEBASH ══════════"
touch pkm1.txt pkm2.txt
echo "Digite o primeiro Pokemon:"
read poke1
echo "Digite o segundo Pokemon:"
read poke2
# while que evita que pokemons repetidos seja selecionados
while [ $poke1 = $poke2 ]; do
    echo "Seus pokemons são iguais, Que tipo de batalha é essa?"
    echo "ela acabaria em empate antes mesmo de começar tente novamente"
    echo "Digite o primeiro Pokemon Novamente:"
    read poke1
    echo "Digite o segundo Pokemon Novamente: "
    read poke2
done
# confirmação dos pokemons
echo "pokemon 1 escolhido foi:" $poke1
echo "pokemon 2 escolhido foi:" $poke2
echo "Boa Escolha Treinador ! Agora iremos Conferir os POKESTATS"
var_info_poke=$(grep -i $poke1 ./pkm.txt)
status_poke=$(grep -i $poke1 ./pkmStats.txt)
read -a info_poke <<<"$var_info_poke"
read -a status_geral <<<"$status_poke"
# escreve no arquivo pkm1.txt e imprime na tela
sumario_poke_1="Nome:⠀${status_geral[1]}/Numero:⠀${info_poke[0]}/Nome:⠀${info_poke[1]}/HP:⠀${status_geral[3]}/Ataque:⠀${status_geral[4]}/Velocidade:⠀${status_geral[8]}/Tipo:⠀${info_poke[2]},${info_poke[3]}⠀Fraquesas:"
printf " "$sumario_poke_1 >>pkm1.txt
#while que resolve as fraquesas dos pokemons
while read desvant; do

    if echo "$desvant" | grep -q "${info_poke[2]}"; then

        read -a atributos_poke_1 <<<"$desvant"
        if [ ${atributos_poke_1[0]} != ${info_poke[2]} ]; then
            printf "${atributos_poke_1[0]},⠀" >>pkm1.txt
        fi
    else
        if [ ${#info_poke[@]} == 4 ]; then
            if echo "$desvant" | grep -q "${info_poke[3]}"; then
                read -a atributos_poke_duo <<<"$desvant"
                if [ ${atributos_poke_duo[0]} != ${info_poke[3]} ]; then
                    printf "${atributos_poke_duo[0]},⠀" >>pkm1.txt
                fi
            fi
        fi

    fi

done <pkmAdv.txt


# forma de pegar as informações nescessarias para entregar o resultado esperado do segundo pokemon
var_info_poke_2=$(grep -i $poke2 ./pkm.txt)
status_poke_2=$(grep -i $poke2 ./pkmStats.txt)
read -a info_poke_2 <<<"$var_info_poke_2"
read -a status_geral_2 <<<"$status_poke_2"

# escreve no arquivo pkm2.txt e imprime na tela
sumario_poke_2="Nome:⠀${status_geral_2[1]}⠀/Numero:⠀${info_poke_2[0]}⠀/Nome:⠀${info_poke_2[1]}⠀/HP:⠀${status_geral_2[3]}⠀/Ataque:⠀${status_geral_2[4]}⠀/Velocidade:⠀${status_geral_2[8]}⠀/Tipo:⠀${info_poke_2[2]},${info_poke_2[3]}⠀Fraquesas:"
printf " "$sumario_poke_2 >>pkm2.txt
while read desvant_2; do

    if echo "$desvant_2" | grep -q "${info_poke_2[2]}"; then

        read -a atributos_poke_2 <<<"$desvant_2"
        if [ ${atributos_poke_2[0]} != ${info_poke_2[2]} ]; then
            printf "${atributos_poke_2[0]}," >>pkm2.txt
        fi
    else
        if [ ${#info_poke_2[@]} == 4 ]; then
            if echo "$desvant_2" | grep -q "${info_poke_2[3]}"; then
                read -a atributos_poke_duo_2 <<<"$desvant_2"
                if [ ${atributos_poke_duo_2[0]} != ${info_poke_2[3]} ]; then
                    printf "${atributos_poke_duo_2[0]}," >>pkm2.txt
                fi
            fi
        fi

    fi

done <pkmAdv.txt
printf "\n╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗\n"
cat pkm1.txt
printf "\n"
cat pkm2.txt
printf "\n╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝"
