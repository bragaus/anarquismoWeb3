# Instalando o Kali Linux

Este vídeo é um guia prático para a instalação do Kali Linux em uma máquina virtual ou sistema físico. O processo demonstrado utiliza o instalador do Kali Linux, que é uma distribuição baseada em Debian, otimizada para pentesting e segurança ofensiva.

## Início da Instalação

1.  **Boot da Máquina:** O vídeo começa com o boot da máquina virtual a partir da imagem ISO do Kali Linux.
2.  **Menu de Inicialização:** A tela do Kali Linux oferece várias opções de inicialização:
    * **Live (amd64):** Inicia o sistema a partir da memória RAM, sem instalar no disco. Ideal para testes rápidos ou uso temporário.
    * **Live (forensic mode):** Modo forense, que não faz nenhuma alteração no disco.
    * **Live USB Persistence / Live USB Encrypted Persistence:** Permite usar uma unidade USB para salvar dados e configurações entre sessões.
    * **Install:** Inicia o instalador em modo de texto. Esta é a opção escolhida no vídeo.
    * **Graphical install:** Inicia o instalador com uma interface gráfica. O apresentador comenta que prefere a instalação em modo de texto, mas ambas são válidas.

## Passos da Instalação

O processo de instalação guiado é demonstrado passo a passo:

1.  **Idioma (Language):** Seleciona o idioma para o processo de instalação. O vídeo sugere o uso de "English" para garantir compatibilidade e evitar problemas de tradução.
2.  **Território (Country or territory):** Define a sua localização para configurar o fuso horário e outras definições regionais. No exemplo, é selecionado "Brazil" dentro de "South America".
3.  **Configuração de Localidade:** Mantido em "United States" com UTF-8 para manter a compatibilidade.
4.  **Layout do Teclado (Keymap):** Escolhe o layout do teclado. O vídeo diferencia entre "American English" (para teclados sem a tecla `ç`) e "Brazilian" (para teclados ABNT2 com `ç`).
5.  **Configuração de Rede:**
    * **Hostname:** Define o nome do host da máquina. O nome sugerido no vídeo é "pentest".
    * **Domain name:** Define o nome do domínio, por exemplo, "desec".
6.  **Senha do Usuário `root`:** Cria a senha para o usuário `root`, que é o superusuário do sistema. É necessário validar a senha digitando-a novamente.
7.  **Configuração de Horário:** A partir da localização, o instalador define o fuso horário. No exemplo, é selecionado "São Paulo".
8.  **Particionamento de Disco (Partition Disks):**
    * O instalador oferece opções para particionar o disco. As opções incluem:
        * "Guided - use entire disk" (Guiado - usar o disco inteiro).
        * "Guided - use entire disk and set up LVM" (LVM é um gerenciador de volume lógico).
        * "Guided - use entire disk and set up encrypted LVM" (Criptografa o disco, adicionando uma camada de segurança).
        * "Manual" (Manual).
    * O vídeo opta pela opção mais simples: "Guided - use entire disk". A opção encriptada é mencionada como uma boa prática para ambientes de produção.
    * Confirma o disco a ser particionado (`/dev/sda` na máquina virtual).
    * Confirma o esquema de particionamento (todos os arquivos em uma única partição).
    * Finaliza o particionamento, confirmando as alterações.
9.  **Instalação do Sistema:**
    * O instalador começa a formatar as partições e a copiar os arquivos para o disco.
    * Configuração do gerenciador de pacotes (proxy de rede, espelho de rede).
    * Instalação do GRUB (carregador de inicialização). O vídeo sugere instalar no `/dev/sda`.
    * A instalação é concluída. O sistema é reiniciado.

## Primeiro Login e Uso

1.  **Tela de Login:** Após a reinicialização, o sistema exibe a tela de login.
2.  **Credenciais:** O usuário padrão é `root` e a senha é a que foi definida durante a instalação.
3.  **Interface Gráfica:** O Kali Linux é iniciado, apresentando a interface gráfica padrão.
4.  **Acesso às Ferramentas:** O vídeo mostra o acesso ao terminal e ao menu de aplicativos, onde estão organizadas as ferramentas de pentesting, como "Information Gathering", "Vulnerability Analysis", "Web Application Analysis", etc.

## Conclusão

A instalação do Kali Linux é um passo fundamental para quem deseja se aprofundar em pentesting e segurança cibernética. Com o sistema instalado, o usuário tem acesso a um vasto conjunto de ferramentas para praticar as técnicas que serão ensinadas nos próximos módulos.
