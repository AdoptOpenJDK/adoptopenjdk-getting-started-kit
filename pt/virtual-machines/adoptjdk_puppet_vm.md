# OpenJDK 8 Vagrant Puppet

**Por favor, considere que os arquivos descritos neste documento podem ser grandes e são medidos em gigabites, recomendamos que estes sejam baixados em uma conexão de internet rápida e que se evite efetuar o download em conferências e salas de aula.**

Descrição
===========
Ubuntu 12.04 Sandbox é uma imagem vagrant [Vagrant](http://vagrantup.com/)- baseada em Puppet. Esta VM contém um ambiente virtual usado para rodar e testar modulos do OpenJDK 8.

Nunca foi tão fácil iniciar com o OpenJDK, com apenas um comando vagrant up e você estara com tudo configurado.

![OpenJDK](https://soujavablog.files.wordpress.com/2015/05/openjdk.jpg)

Requisitos mínimos
============

Para realizar os passos descritos neste documento, você precisa ter instalado e configurado em seu computador os seguintes componentes:

* [VirtualBox](https://www.virtualbox.org/)
* [Vagrant 1.7+](http://vagrantup.com/)
* [Git](http://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

Ultilização
=====

Efetue o download do repositorio Git
------------------------------------

```
git clone https://github.com/soujava/adoptjdk-puppet-vm.git
```

Startup inicial
---------------

Para iniciar a máquina virtual e acionar o Puppet para criar os módulos, digite o comando abaixo e dentro do diretorio adoptjdk-puppet-vm onde as estão fontes do projeto e pressione enter:

```
$ vagrant up
```

O Puppet vai de maneira automatica executar os seguintes passos: instalar o Mercurial e o OpenJDK 7,
clonar o  projeto com os fontes do OpenJDK 8, em seguida executar o comando ```get_source.sh```, este serve para baixar todas as sources de todos os projetos que existem no OpenJDK 8, em seguida executar ```bash configure``` para garantir que tudo funciona e está tudo ok para realizar o build.
Para finalizar, o programa de instalação execute o comando ```make images``` que irá gerar a build do OpenJDK images e finalmente compilar o OpenJDK8.


*Aviso, este processo pode tardar até 50 minutos. Testado em um MacPro 2014 250GB SSD 16GB RAM.


Se tudo correr bem, você deve ver um log similar a este em seu console:

```
==> default: ## Finished images (build time 00:00:49)
==> default: ----- Build times -------
==> default: Start 2015-05-01 20:04:30
==> default: End   2015-05-01 20:51:58
==> default: 00:00:42 corba
==> default: 00:00:53 demos
==> default: 00:34:31 hotspot
==> default: 00:00:49 images
==> default: 00:00:26 jaxp
==> default: 00:00:38 jaxws
==> default: 00:08:28 jdk
==> default: 00:00:49 langtools
==> default: 00:00:12 nashorn
==> default: 00:47:28 TOTAL
==> default: -------------------------
==> default: Finished building OpenJDK for target 'images'
```