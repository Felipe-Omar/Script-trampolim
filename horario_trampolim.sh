#!/bin/bash 

DIR=~/trampolim;                                                                #Designação do diretório de armazenamentos dos arquivos com os horários
                                                                                #Apresentação do Menu, e armazenamento da opção escolhida na variável LINHA
LINHA=$(whiptail --title "Linhas Trampolim" --menu "Insira a Linha" 0 0 0 \
                    A  "Parnamirim  / Natal" \
                    B  "Parnamirim  / Natal, via Alecrim" \
                    C  "Parnamirim  / Natal, via Santa Tereza" \
                    CV "Parnamirim  / Natal, via Vale do Sol" \
                    G  "Macaíba     / Natal, via BR 226" \
                    H  "Macaíba     / Ielmo Marinho" \
                    I  "Macaíba     / Igapó, via São Gonçalo" \
                    J  "Parnamirim  / Natal, via Passagem de Areia" \
                    L  "Cajupiranga / Natal, via Shopping Via Direta" \
                    M  "Macaíba     / Natal, via BR-101" \
                    P  "Parnamirim  / Natal, via Ponta Negra" \
                    R  "São Gonçalo / Natal, via Aeroporto, TRN, Midway" \
                    S  "São Gonçalo / Natal (Cidade Alta)" \
                    T  "São Gonçalo / Natal, via Guanduba" \
                    V  "Bosque das Colinas / Natal (Shopping Via Direta)" \
                    N  "Caminho do Sol / Coophab / Cidade Verde" \
                    W  "Aeroporto Aluísio Alves / Centro de SGA" \
                    K  "Macaíba / Campus da UFRN de Jundiaí" \
                    3>&1 1>&2 2>&3);                                            #whiptail só mostra interface com esse comando ao final
                    
RETORNO=$?;                                                                     #Armazenamento do retorno da função whiptail (0 - Ok, 1 - Cancel)                
LINHA=`echo "$LINHA" | tr 'A-Z' 'a-z'`;                                         #Deixar o valor armazenado em LINHA como letra minúscula
                                                                                #Pois o servidor da trampolim ultiliza apenas letras minusculas em seus arquivos

if [ $RETORNO -eq 0 ]; then                                                     #Se tiver sido selecionado uma Linha
    if [ -e "$DIR"  ]; then                                                         #Se já existe o Diretório
        if [ -e "$DIR"/linha-"$LINHA".pdf ]; then                                   #Se já existe o arquivo
            rm $DIR/linha-$LINHA.pdf; fi;                                           #Remova o arquivo
        wget -P "$DIR" http://www.trampolimdavitoria.com/horarios/linha-$LINHA.pdf  #Baixe a versão mais recente do arquivo
        xdg-open "$DIR"/linha-$LINHA.pdf                                            #Abra o arquivo
    
    else                                                                            #Se não existe o Diretório (Primeira execução do Programa)    
        mkdir $DIR                                                                  #Crie o diretório ~/trampolim
        wget -P "$DIR" http://www.trampolimdavitoria.com/horarios/linha-$LINHA.pdf  #Baixe a versão mais recente do arquivo
        xdg-open linha-$LINHA.pdf; fi                                               #Abra o arquivo

else                                                                            #Se tiver sido pressionado o botão cancelar, apresente a mensagem de encerramento
    whiptail --title "Linhas Trampolim" --msgbox "Operação Cancelada. Tecle Enter para encerrar o programa" 0 0 3>&1 1>&2 2>&3;
fi
clear;