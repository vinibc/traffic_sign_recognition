#!/bin/bash

#Recebe como entrada o nome da pasta onde estao os arquivos de treino
#O dataset ja vem no formato Nome_Diretorio/classeID/imagem.ppm para a classe zero por exemplo: Images-train/0000/imagem_da_classe_0_.ppm
#O mantenha esse formato, apenas 1 diretorio antes dos diretorios de cada classe.
# Neste caso o uso do script sera ./script_separar_treino.sh Nome_Diretorio

echo "running..."
ls $1/*/*.ppm | awk -F "/" '{print $0" "$2+0}' > train_labels.txt && shuf train_labels.txt > train-shuffled.txt
echo "DONE."
