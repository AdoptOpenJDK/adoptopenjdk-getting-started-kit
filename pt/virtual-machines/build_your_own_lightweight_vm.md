# Faça sua própria VM light-weight

Uma simplificada maquina virtual sem interface grafica configurada para fazer o build do OpenJDK.


### Quick Start

Para iniciar, efetue o download da versão mais atualizada do *Vagrant 1.7.2 ou mais atual* [link](https://www.vagrantup.com/downloads.html)

Execute os seguintes comandos em sua linha de comando:

```$ vagrant box add ubuntu-14.10-amd64 https://cloud-images.ubuntu.com/vagrant/utopic/current/utopic-server-cloudimg-amd64-vagrant-disk1.box";```
Este processo pode demorar vários minutos, efetuar o build completo do OpenJDK pode tardar uma hora (testado em um *MacBookPro 2013 with 16GB c/ SSD*).

### Passos iniciais

*
If you would like to do the above and explore all the technologies used to build the box.

Nas seções do documento abaixo, todas sao mandatorias para obter uma completa execução dos procedimentos aqui mencionados. Todas as seções marcasa com **bold** demarcam informações adicionais ou configurações opcionais. **Qualquer referencia ao caracter $ deve se subentender que se fala de um comando em linha de comando a ser executado dentro da vm vagrant. **

  - Instalando Virtual Box, Vagrant & Git
  - Boot Vagrant VM
  - Initial Vagrant VM setup
  - OpenJDK 9 Build

## Instalando Virtual Box, Vagrant & Git
Os softwares abaixo mencionados foram testados e instalados em um Mac e as cujo software e respectiva versão sao da data nao menos rescente que 01/18/2015;
  - Virtual Box v4.3.20 (https://www.virtualbox.org/wiki/Downloads)
  - Vagrant v1.7.1 (https://www.vagrantup.com/downloads.html)
  - Git v2.2.2 (http://git-scm.com/downloads)

## Efetue o Download da VM
Uma vez que o vagrant estiver instalado execute o comando abaixo em sua linha de comando, vale lembrar que o arquivo esperado deve conter cerca de 377MB. Caso esteja se preparando para ultilizar esta vm em uma conferencia proxima, considere efetuar o download agora para evitar congestionamento nas redes wifi da conferencia.

```vagrant box add ubuntu-14.10-amd64 https://cloud-images.ubuntu.com/vagrant/utopic/current/utopic-server-cloudimg-amd64-vagrant-disk1.box";```

Este download e consequente instalação do OpenJDK pode tardar cerca de uma hora em uma conexão de rede lenta. (Testado em um MacBookPro 2013 com 16GB de memoria e hd SSD)

Carregar a imagem no VirtualBox e iniciar a maquina virtual.

##### Instalação e realizando o setup do Vagrant VM

Uma vez finalizado o download e as dependencias estiverem instaladas, o proximo script vai efetuar o download da ultima versao do JDK9 e/ou atualizar arquivos existentes caso os mesmos já existam antes da execução deste comando.

```
  $ vagrant ssh
  $ /vagrant/scripts/source.sh
```

##### Efetuando o build do OpenJDK 9

```
  $ vagrant ssh
  $ cd ~/source/jdk9 ;
  $ bash get_source.sh ;
  $ bash configure ;
  $ make clean images ;
```  

##### Efetuando testes no OpenJDK 9
```
  $ make test ;
```