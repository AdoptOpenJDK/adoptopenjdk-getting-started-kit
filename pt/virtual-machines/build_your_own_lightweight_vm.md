# Crie a sua própria light-weight VM

Uma máquina virtual simples e padronizada para buildar a OpenJDK.


### Início

Por favor faça o download e instale a última versão do Vagrant *1.7.2 ou maior* em https://www.vagrantup.com/downloads.html.

Execute os seguintes comandos:

```
# Clone the adopt-openjdk-kiss-vagrant repo
$ git clone https://github.com/adoptopenjdk/adopt-openjdk-kiss-vagrant.git

# Mude de diretório para criar o Vagrantfile
$ cd adopt-openjdk-kiss-vagrant.git
$ vagrant init

# Inicie a máquina virtual
$ vagrant up

# Conecte na VM via ssh
$ vagrant ssh

# Em seguida execute
# Mapping in place: /vagrant/scripts/ ==> [currentfolder]/scripts
```

Dê uma olhada nos scripts e diretórios desse repositório, já que eles podem ser utilizados para diferentes propósitos. Uma vez finalizdos os passos acima, vá até [Build your own OpenJDK](../binaries/build_your_own_openjdk.md) para continuar com o build da OpenJDK.

*Nota:* o tamanho da VM é de aproximadamente **377MB** então por favor, faça o download antecipadamente, em uma conexão lenta, o processo completo até o build pode levar cerca de uma hora (utilizando um *MacBookPro 2013 com 16GB e SSD*)


### Processo detalhado

*Caso você queira realizar o processo acima e explorar todas as tecnologias utilizadas para criar a VM.*

Os passos estão na seção abaixo, todos os bullet points são necessários, as partes em **negrito** são configurações opcionais. 
**Qualuer menção a $ deve ser executado na linha de comando com a Vagrant VM**

  - Instalação da Virtual Box, Vagrant e Git
  - Inicialização da Vagrant VM
  - Configuração inicial da Vagrant VM
  - Build da OpenJDK 9

## Instalação da Virtual Box, Vagrant e Git
As versões dos softwares instalados e testados em um Mac no dia 18/01/2015 são:
  - Virtual Box v4.3.20 (https://www.virtualbox.org/wiki/Downloads)
  - Vagrant v1.7.1 (https://www.vagrantup.com/downloads.html)
  - Git v2.2.2 (http://git-scm.com/downloads)

## Download da Vagrant VM no repositório remoto
Uma vez que a VM foi instalado, por favor execute o seguinte comando, o download é de aproximadamente 377MB então por favor faça isso antecipadamente para ganhar tempo.

```bash
vagrant box add ubuntu-14.10-amd64 https://cloud-images.ubuntu.com/vagrant/utopic/current/utopic-server-cloudimg-amd64-vagrant-disk1.box; [dead-link]
```

Em uma conexão lenta o processo completo até o build pode levar cerca de uma hora (utilizando um *MacBookPro 2013 com 16GB e SSD*)

Carregando a VirtualBox  and iniciando a VM.

##### Setup inicial da Vagrant VM
Uma vez que a VM foi inicializada e suas dependencias instaladas, o próximo script fará o download da última versão da jdk9, caso você já tenha alguma versão da jdk, o prócesso executará uma atualização então fique tranquilo quanto a isso.

```bash
  $ vagrant ssh
  $ sh /vagrant/scripts/source-share-with-host.sh
```

##### Build da OpenJDK 9

```bash
  $ vagrant ssh
  $ cd /vagrant/sources/jdk9 ;
  $ bash get_source.sh ;
  $ bash configure;
  or 
  $ bash configure --disable-warnings-as-errors;
  $ make clean images ;
```  
```bash
  $ make test ;
```
Há também um [repositório no github](https://github.com/adoptopenjdk/adopt-openjdk-kiss-vagrant) com a *Vagrantfile* e os arquivos necessários.