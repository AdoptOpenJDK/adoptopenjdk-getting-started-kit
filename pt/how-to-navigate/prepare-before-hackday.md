##Como se preparar antecipadamente para um hackday ou workshop?

**Note:** Referencia as [issues conhecidas](../known-issues/known_issues.md) seção onde você pode consultar as issues encontradas até o momento, se você não encontrar soluções para seus problemas, por favor [contribua com esse livro](../contributors.md) or [nos avise](../feedback.md).

##### Hardware necessário/Sistema operacional/Software
Abaixo você pode ver os requisitos mínimos necessários para usar as VMs:

    64-bit CPU running (> 2.0 Ghz)
    64-bit OS (Linux, MacOS, Windows)
    20-25 GB free disk space minimum
    4-8 GB RAM minimum

Plataforma/Requisitos de software:

    VirtualBox instalada
    Java 7 and 8 instalados
    Vagrant instalado
    Docker instalado (opcional)
    Boot2Docker instalado (opcional)
    
**dependendo do caso, se você estiver compilando a OpenJDK nativamente ou em uma VM ou Vagrant ou usando Docker, você precisará instalar o software relacionado na sua máquina**

Demais requisitos:

    entender Java
    entender o processo de build, maven, git, etc... 
    alguma experiência com Linux e bash
    algum conhecimento da OpenJDK
    experiência com Vagrant (opcional, somente se você pretende utilizar essa tecnologia)
    experiência com Docker (optional, somente se você pretende utilizar essa tecnologia)
<br/>
##### Download supporting software
- VirtualBox (para carregar a VM): https://www.virtualbox.org/
- Java (dentro da VM): http://www.oracle.com/technetwork/java/javase/
- Vagrant (para iniciar as Vagrant Boxes) https://www.vagrantup.com/

_Opcional_
- Docker: https://docs.docker.com/installation/#installation
- Boot2Docker: http://boot2docker.io/
- IntelliJ: https://www.jetbrains.com/idea/
- Eclipse: https://eclipse.org/
- Netbeans: https://netbeans.org/
- SonarQube: http://www.sonarqube.org/

<br/>
##### Baixe ou copie alguma ready-made VM

Baixe a VM abaixo - _Ubuntu 12.04 VM com OpenJDK9 (jigsaw) com os fontes Sources e IntelliJ_:
    
    https://copy.com/tA0l06zDrJNNDKVL
    Login: openjdk 
    Senha: openjdk123

As imagens estão disponíveis via drivers portáteis para serem copiadas para seu computador.

As imagens são carregadas em ```File | Import Appliances...``` no menú principal da VirtualBox.

#### Compilando a OpenJDK nativamente na núvem

Verifique a seção [Building OpenJDK 9](../binaries/build_openjdk_9.md) para saber como compilar a OpenJDK nativamente no Linux, MacOS ou Windows utilizando seu Desktop/Laptop ou mesmo na núvem.

<br/>
##### Verificando instalação e ambiente
Na sua máquina ou utilizando uma VM, navege até o diretório openjdk e execute os comandos descritos em [Compilando a OpenJDK 9](../binaries/build_openjdk_9.md):

*openjdk - sources/jdk9 ou dev/jdk9_dev*

Como as VMs, Vagrant boxes ou Docker images que você copiou já vem com a imagem a ser compilada, nós podemos continuar e utiliza-las para o workshop, não é necessário atualizar o código fonte. Porém caso queira, para atualizar você pode executar o seguinte script.
```
bash get_source.sh
```
**Por favor não execute o comando acima dentro da VM, Vagrant box ou Docker container, isso pode causar um aumento no tempo de compilação ou em alguns casos quebrar a build fazendo-se necessário investigação e correção do problema.**

Alternativamente você pode executar dois comandos:

```
bash configure --disable-warnings-as-errors
make images
```

Nota: Por favor evite também 'make clean images', a menos que isso seja realmente necessário, isso evita a recompilação de todo o projeto.

Se algum dos comandos acima falhar, então a OpenJDK não está configurada corretamente ou o código está quebrado. Nesse caso reporte o occorido nas [Issues conhecidas](../known-issues/known_issues.md) e verifique a seção de [Feedback](../feedback.md).

<br/>
##### Finalmente
Quando finalizado veja [como navegar e progredir ?](how-to-navigate-and-make-progress.md) e prossiga para o próximo passo para seguir com o fluxo.

#####Para usuários regulares/experientes, que tenham completado os passos acima com sucesso e que gostariam de explorar os scripts **Vagrant** ou **Docker** há uma seção chamada  [Ações adicionaos no pre-hackday para usuários experientes](additional-pre-hackday-actions-experienced.md).