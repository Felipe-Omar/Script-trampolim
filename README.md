# Script-trampolim
Repositório do shell script para a apresentação dos horários de ônibus da Trampolim da Vitória.
# DESCRIÇÃO
O shell script "horario_trampolim.sh" tem a função de apresentar os horários relativos às linhas de ônibus da empresa Trampolim 
da Vitória. Para a apresentação dos horários, será feito o download de um arquivo .pdf diretamente do servidor da Trampolim, e 
o mesmo será salvo em seu computador na pasta 'trampolim', que se localizará na sua pasta pessoal (/home/'usuário'/). O usuário 
deve apenas escolher a linha desejada e o arquivo com os horários será apresentado automaticamente.

# REQUISITOS
Como se trata de um script contruído para o bash, é necessário que o usuário possua o shell bash instalado em seu computador. Além disso, é necessária uma conexão com a internet para o correto funcionamento do programa. Para a visualização dos arquivos de horários, é necessário que o usuário possua qualquer leitor de arquivos .pdf instalado em seu computador.

# INSTRUÇÕES
Com o arquivo shell script salvo em seu computador, você deverá atribuir as permissões de execução necessárias para o funcionamento do mesmo. Caso você esteja utilizando uma distribuição Linux baseada no Ubuntu, você pode executar o seguinte comando no terminal:

sudo chmod +x horario_trampolim.sh

Lembrando que você deve estar na pasta onde o arquivo está presente.
Para executar o programa, basta digitar:

./horario_trampolim.sh

Se quiser, você também pode mover o script para alguma pasta que esteja dentro da variável de ambiente $PATH, e tornar o script em um comando do sistema, podendo ser executado em qualquer pasta do sistema.

# CONTATO
Autor : Felipe Omar.
Email : felipeomar.c@gmail.com
Março , 2017.
