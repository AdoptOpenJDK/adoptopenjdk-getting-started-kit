## Como configurar o ambiente em sua máquina no dia?

** Nota: ** consulte a seção [Problemas Conhecidos](../known-issues/known_issues.md) caso você encontre problemas, se você não encontrar as soluções, [Contribua para este livro](../contributors.md) ou [Informe-nos](../backup.md).

### Para compilar a OpenJDK nativamente ou na nuvem

** Nota: ** A menos que você esteja em um ambiente com uma boa conexão, NÃO tente buildar a OpenJDK nativamente.

Você não precisa copiar nada, apenas inscreva-se em algum ambiente na nuvem, ou seja, Amazon ou outro provedor.

Utilize uma Box com um sistema operacional de sua preferência e siga as instruções abaixo [Adopt OpenJDK Build Instruções](https://java.net/projects/adoptopenjdk/pages/AdoptOpenJDKBuildInstructions) (recomendamos uma distribuição Linux como Ubuntu, Fedora ou Centos ).


### Para buildar a OpenJDK em uma VM Virtualbox
Copie esses arquivos do dispositivo portátil para a sua máquina:

   VirtualBox para Ubuntu/[binários] 
		ou
   VirtualBox para MacOS/[binários]
		ou
   VirtualBox para Windows/[binários]


   OpenJDK VM Imagens/OpenJDK9_Jigsaw_vm
		ou
   OpenJDK VM Images/VM OpenJDK sem suporte a IDE
		ou
   OpenJDK VM Images/OpenJDK VM com Eclipse


   Imagens OpenJDK VM/OpenJDK VM passwords.txt

- Instale a VirtualBox
- Execute a VirtualBox (Oracle VirtualBox)
- Importe a respectiva VM (não criar uma nova configuração VirtualBox)
- Iniciar a VM

Finalmente, vá para a seção [Buildando a OpenJDK 9](../binaries/build_openjdk_9.html).
   
### Para buildar a OpenJDK em uma VM criada por um script Vagrant
Copie estes arquivos do dispositivo portátil para a sua máquina:
   Vagrant/*.*
   Vagrant/openjdk-vagrant-images
   Vagrant/[binários]

- Instale o Vagrant e assegure-se de que funciona nos respectivos ambientes
- Descompacte os arquivos .tar.gz na pasta Vagrant
- Leia o arquivo README.md para entender o que cada um dos arquivos de script faz
- Use os scripts quando estiver confiante
- Nota: Não execute o Vagrantfile para construir uma imagem - isso leva tempo e requer largura de banda
- Nota: não existem scripts para Windows (contribuições aceites)

### Para buildar a OpenJDK em um container criado por um script Docker
Copie estes arquivos do dispositivo portátil para a sua máquina:

   Docker /*.*
   Docker/OpenJDK9
   Docker/OpenJDK9-baseimagem

- Instale o Docker (e Boot2Docker) e certifique-se de que funcionam nos respectivos ambientes
- Leia o arquivo README.md para entender o que cada um dos arquivos de script faz
- Use os scripts quando estiver confiante
- Use o script loadImageToFile.sh para carregar a imagem do docker em seu repositório local
- **Nota:** Não execute o Dockerfile para construir uma imagem - isso leva tempo e requer largura de banda
- **Nota:** Não existem scripts para Windows (contribuições aceites)

<br/>
##### Finalmente
Quando terminar, vá para a seção [Como navegar e fazer progresso?](how-to-navigate-and-make-progress.md) e vá para a próxima etapa para continuar com o fluxo.