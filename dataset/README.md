# Trabalho_2_RanikVinicius
Trabalho Disciplina Cognição Visual 2016/2

Alunos: Ranik Guidolini e Vinicius Cardoso

Reconhecimento de Placas de Trânsito

## Dataset

- Dataset

  [German Traffic Sign Recognition Benchmark (GTSRB)](http://benchmark.ini.rub.de/?section=gtsrb&subsection=dataset#Downloads)
  Lembre-se de baixar o arquivo de anotação com o ID da classe [Anotações com ID](http://benchmark.ini.rub.de/Dataset/GTSRB_Final_Test_GT.zip) 

## Instruções

Após ter os requisitos verifique o caminho das pastas de treino e teste nos arquivos dataset/train-shuffled.tx e test.txt

Os scripts utilizados para gerar esses arquivos estão disponíveis nessta pasta.

Mantendo mesmo nome dos diretorios, nao eh necessario roda-los novamente.

Se necessário siga as instruções:

- Para separar o teste

Recebe como entrada o nome da pasta onde estao os arquivos de teste e o arquivo de anotacoes com o ID da classe (classID)

O dataset vem no formato Nome_Diretorio/imagem.ppm por exemplo: Images-test/imagem.ppm

O coloque no formato de apenas 1 diretorio antes das imagens

Um arquivo com anotacoes com a Classe dessas imagens é baixado separadamente e tem o nome de GT-final_test.csv

Sera extraido desse arquivo o caminho da imagem e sua classe, o padrao de saida do arquivo para ser usado na rede eh: caminho/imagem.ppm ClassID

Neste caso o uso do script será

  sh script_separar_test.sh Nome_Diretorio GT-final_test.csv

- Para separar o treino

Recebe como entrada o nome da pasta onde estao os arquivos de treino

O dataset ja vem no formato Nome_Diretorio/classeID/imagem.ppm para a classe zero por exemplo:
Images-train/0000/imagem_da_classe_0_.ppm

O mantenha esse formato, apenas 1 diretorio antes dos diretorios de cada classe.

Neste caso o uso do script será

  sh script_separar_treino.sh Nome_Diretorio
