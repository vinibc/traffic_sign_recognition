#!/bin/bash

#Recebe como entrada o nome da pasta onde estao os arquivos de teste e o arquivo de anotacoes com o ID da classe (classID)
#O dataset vem no formato Nome_Diretorio/imagem.ppm por exemplo: Images-test/imagem.ppm
#O coloque no formato de apenas 1 diretorio antes das imagens
#Um arquivo com anotacoes com a Classe dessas imagens é baixado separadamente e tem o nome de GT-final_test.csv
#Sera extraido desse arquivo o caminho da imagem e sua classe, o padrao de saida do arquivo para ser usado na rede eh: caminho/imagem.ppm ClassID
# Neste caso o uso do script sera ./script_separar_test.sh Nome_Diretorio GT-final_test.csv


echo "running..."
meu_diretorio=$1
cat $2 | awk -F ";" '{print "'$meu_diretorio'/"$1" "$8}' > test_label.txt && sed -i 1d test_label.txt
shuf test_label.txt > test-shuffled.txt

echo "DONE."
