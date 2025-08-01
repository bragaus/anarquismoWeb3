# Introdução ao Prompt de Comando do Windows - Parte 2

Esta aula aprofunda o conhecimento sobre o prompt de comando do Windows (CMD), abordando comandos essenciais para gerenciamento de rede, processos do sistema e usuários.

## Comandos de Rede

* `ipconfig`: Exibe a configuração de IP do sistema, incluindo endereço IP, máscara de sub-rede e gateway.
    * `ipconfig /all`: Mostra uma configuração de IP mais detalhada, incluindo servidores DNS.

* `netstat`: Exibe as conexões de rede ativas e as portas em escuta.
    * `netstat -n`: Mostra as conexões em formato numérico.
    * `netstat -p tcp`: Filtra e exibe apenas as conexões TCP.
    * `netstat -p udp`: Filtra e exibe apenas as conexões UDP.

* `net use`: Utilizado para trabalhar com compartilhamentos de rede, como mapear uma unidade de rede.

## Comandos de Gerenciamento de Processos

* `tasklist`: Lista todos os processos em execução no sistema, junto com seus respectivos PIDs (Process ID). Isso é útil para identificar programas rodando em segundo plano.

* `taskkill`: Encerra um processo com base em seu PID.
    * `taskkill /pid [PID]`: Encerra o processo com o PID especificado. Ex: `taskkill /pid 6928`.
    * `taskkill /pid [PID] /f`: Encerra o processo de forma forçada (`/f`).

## Comandos de Gerenciamento de Usuários

* `net user`: Exibe uma lista de todos os usuários no sistema.

* `net user [nome_do_usuario]`: Exibe informações detalhadas sobre um usuário específico, como data de criação, status da senha e afiliação a grupos. Ex: `net user Administrator`.

* `net user [nome_do_usuario] [senha] /add`: Cria um novo usuário com a senha especificada. Ex: `net user desec Admin@123 /add`.

* `net user [nome_do_usuario] /delete`: Deleta um usuário do sistema. Ex: `net user desec /delete`.

## Aplicações em Pentesting

* **Coleta de Informações:** Comandos como `ipconfig` e `netstat` são frequentemente utilizados para obter informações iniciais sobre a rede e o sistema de um alvo.
* **Movimentação Lateral:** A capacidade de criar usuários com `net user` é uma técnica comum em pentests para persistência e escalonamento de privilégios, permitindo que o atacante mantenha acesso ao sistema.
* **Gerenciamento de Processos:** `tasklist` e `taskkill` podem ser usados para identificar e encerrar processos de segurança (como antivírus) ou para limpar rastros.

## Conclusão

O prompt de comando do Windows oferece uma interface poderosa para o gerenciamento completo do sistema. Para profissionais de segurança, esses comandos são ferramentas essenciais para a execução de tarefas de reconhecimento, exploração e pós-exploração, fornecendo um controle robusto sobre o ambiente de um alvo.
