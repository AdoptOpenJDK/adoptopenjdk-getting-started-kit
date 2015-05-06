# OpenJDK 8 Vagrant Puppet

**Por favor, considere que os arquivos descritos neste documento podem ser grandes e são medidos em gigabites, recomendamos que estes sejam baixados em uma conexão de internet rapida e que se evite efetuar o download em conferencias e salas de aula.**

Descrição
===========
Ubuntu 12.04 Sandbox é uma imagem vagrant [Vagrant](http://vagrantup.com/)- baseada em Puppet. Esta VM contém um ambiente virtual usado para rodar e testar modulos do OpenJDK 8.

Nunca foi tão facil iniciar com o OpenJDK, com apenas um comando vagrant up e você estara com tudo configurado.
![OpenJDK](https://soujavablog.files.wordpress.com/2015/05/openjdk.jpg)

Requisitos minimos
============

Para realizar os passos descritos neste documento, você precisa ter instalado e configurado em seu computador os seguintes componentes:

* [VirtualBox](https://www.virtualbox.org/)
* [Vagrant 1.7+](http://vagrantup.com/)

Ultilização
=====

Startup inicial
---------------

Para iniciar a maquina virtual e acionar o Puppet para criar os modulos, digite o comando abaixo e pressione enter:

```
    $ vagrant up
```

O Puppet vai então instalar o Mercurial e o OpenJDK 7.

Vai Clonar o  projeto com os fontes do OpenJDK 8.

Em seguida executar o comando ```get_source.sh```, este serve para baixar todas as sources de todos os projetos que existem no OpenJDK 8.

Em seguida executar ```bash configure``` para garantir que tudo funciona e estamos pronto para realizar o build.

Para finalizar, o programa de instalação vai executar o comando ```make images``` que ira fazer o build do OpenJDK images.