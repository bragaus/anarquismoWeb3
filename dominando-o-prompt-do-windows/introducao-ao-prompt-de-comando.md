# Introdução ao Prompt de Comando do Windows

Este texto apresenta os conceitos e comandos básicos para interagir com o prompt de comando do Windows (CMD), uma ferramenta fundamental para administradores de sistemas e profissionais de segurança da informação.

## Acessando o Prompt de Comando

* **Versão do Windows:** O exemplo utiliza o Windows 10, mas os comandos são aplicáveis a outras versões.
* **Como abrir:**
    1.  Clique no botão Iniciar.
    2.  Digite `cmd` na barra de pesquisa.
    3.  Clique com o botão direito no "Command Prompt" e selecione "Run as administrator" (Executar como administrador). Isso garante que você tenha permissões elevadas para executar comandos com mais privilégios.

## Comandos de Navegação e Diretórios

* **Verificar o diretório atual:**
    * `echo %cd%`: Exibe o caminho do diretório em que você está.

* **Mover-se entre diretórios:**
    * `cd ..`: Move para o diretório pai (um nível acima).
    * `cd \`: Move para a raiz do disco (C:\).
    * `cd [nome_do_diretorio]`: Entra em um diretório específico.
    * `cd Users`: Entra no diretório "Users".
    * `cd [nome_do_usuario]`: Entra no diretório do seu usuário.
    * `cd Desktop`: Entra na área de trabalho.

* **Listar conteúdo do diretório:**
    * `dir`: Lista todos os arquivos e subdiretórios no diretório atual.

## Comandos de Manipulação de Arquivos e Diretórios

* **Criar um diretório:**
    * `mkdir [nome_da_pasta]`: Cria um novo diretório com o nome especificado. Ex: `mkdir curso`.

* **Criar um arquivo:**
    * `echo [conteudo] > [nome_do_arquivo.ext]`: Cria um novo arquivo e insere o conteúdo. O sinal `>` sobrescreve o conteúdo se o arquivo já existir. Ex: `echo JANEIRO > meses.txt`.
    * `echo [conteudo] >> [nome_do_arquivo.ext]`: Adiciona conteúdo ao final do arquivo, sem sobrescrever. Ex: `echo FEVEREIRO >> meses.txt`.

* **Visualizar o conteúdo de um arquivo:**
    * `type [nome_do_arquivo.ext]`: Exibe o conteúdo de um arquivo de texto diretamente no prompt. Ex: `type meses.txt`.
    * `notepad [nome_do_arquivo.ext]`: Abre o arquivo no Bloco de Notas para visualização e edição. Ex: `notepad meses.txt`.

* **Copiar um arquivo:**
    * `copy [origem] [destino]`: Copia um arquivo de um local para outro. Ex: `copy meses.txt novo.txt`.

* **Mover um arquivo:**
    * `move [origem] [destino]`: Move um arquivo de um local para outro. Ex: `move novo.txt ..`.

* **Deletar um arquivo:**
    * `del [nome_do_arquivo.ext]`: Deleta permanentemente o arquivo. Ex: `del novo.txt`.

## Comandos Avançados (Atributos de Arquivos)

* **Ocultar um arquivo ou diretório:**
    * `attrib +h [nome_do_arquivo_ou_diretorio]`: Aplica o atributo "oculto" (`+h`) a um arquivo ou diretório. Isso o torna invisível em visualizações padrão. Ex: `attrib +h curso`.
    * `dir`: O comando `dir` padrão não listará mais o diretório "curso".
    * `dir /a`: O parâmetro `/a` (all) permite visualizar todos os arquivos, incluindo os ocultos.

* **Exibir a ajuda de um comando:**
    * `[comando] /?`: Exibe todas as opções e a sintaxe de um comando específico. Ex: `attrib /?`.

## Conclusão

O prompt de comando do Windows é uma ferramenta poderosa e versátil, indispensável para o controle do sistema. Dominar esses comandos básicos é o primeiro passo para realizar tarefas de automação, gerenciamento e, no contexto de segurança, para manipular arquivos e diretórios de forma avançada.
