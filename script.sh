#!/bin/bash


# infos se vcs do gp estiverem perdidos
# <<< Em vez de digitar texto, você fornece uma sequência de texto pré-criada a um programa 
#  -i, --ignore-case         ignore case distinctions ignora distinção de casas


# remove os arquivos para evitar residuos
rm pkm1.txt pkm2.txt

# inicio da interação com "jogador"
echo "=-=-= BEM VINDO AO POKEBASH =-=-="
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
printf "\n|------------------------------------------------------------------------------------------------------------|\n"
# forma de pegar as informações nescessarias para entregar o resultado esperado do primeiro pokemon
var_info_poke=$(grep -i $poke1 ./pkm.txt)
status_poke=$(grep -i $poke1 ./pkmStats.txt)
read -a info_poke <<<"$var_info_poke"
read -a status_geral <<<"$status_poke"
    
    sumario_poke_1="Numero:_${info_poke[0]}_Nome:_${info_poke[1]}_HP:_${status_geral[3]}_Ataque:_${status_geral[4]}_Velocidade:_${status_geral[8]}_Tipo:_${info_poke[2]},${info_poke[3]}_Fraquesas:_${fraquesa_info_poke[0]}"

    
        printf " "$sumario_poke_1 >>pkm1.txt
while read desvant; do

    if echo "$desvant" | grep -q "${info_poke[2]}"; then
        
        read -a atributos_poke_1 <<< "$desvantp"
        if [ ${atributos_poke_1[0]} != ${info_poke[2]} ]; then
            printf "${atributos_poke_1[0]},_" >> pkm1.txt
        fi

    fi

done <pkmAdv.txt

        cat pkm1.txt


# escreve no arquivo pkm1.txt e imprime na tela

# forma de pegar as informações nescessarias para entregar o resultado esperado do segundo pokemon
var_info_poke_2=$(grep -i $poke2 ./pkm.txt)
status_poke_2=$(grep -i $poke2 ./pkmStats.txt)
read -a info_poke_2 <<<"$var_info_poke_2"
read -a status_geral_2 <<<"$status_poke_2"

# escreve no arquivo pkm2.txt e imprime na tela
printf "\n|------------------------------------------------------------------------------------------------------------|\n"
printf " "$sumario_poke_2 >>pkm2.txt
cat pkm2.txt
printf "\n|------------------------------------------------------------------------------------------------------------|\n"









