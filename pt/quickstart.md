# Início rápido #

Alguns conhecimentos sobre os comandos do Ubuntu e do Linux são úteis, mas os passos abaixo serão o suficiente por enquanto.

Os comandos que você precisa digitar são mostrados assim:
`$ ls ~/dev` # Mostra o conteúdo da pasta `dev/`.

O sinal `$` principal indica que este é um comando Linux, não é necessário digitar `$`. Da mesma forma, não digite nenhum texto que comece com `#` (estes são apenas comentários).

### Instale a máquina virtual ###
Se já tiver criado uma máquina virtual, ignore as seguintes etapas e prossiga para **Iniciar a VM**
* Instalar o VirtualBox
* Baixe a imagem VM VirtualBox AdoptOpenJDK antecipadamente, se você tiver 3+ horas ou Internet rápida, nesse link: http://myco.ws/downloads/Ubuntu_12.04_OpenJDK_dev_1506.ova
* Clique duas vezes no arquivo .ova da VM (por exemplo, Ubuntu_12.04_OpenJDK_dev_1506.ova) para abri-lo no VirtualBox e clique no botão "Importar".
* (Opcional) Altere as configurações da VM para fornecer mais recursos. Mudar à partir dos padrões para 4 núcleos e 6 GB de RAM pode reduzir o build da JDK em cerca de 20%

### Iniciar o VM ###
Quando a máquina virtual for iniciada, faça o login como OpenJDK (a senha é j1a2v3a4)

* Inicie o Firefox para verificar a sua conexão com a Internet. Pesquise no Google por "adopt OpenJDK getting started" e escolha
https://www.gitbook.com/book/adoptopenjdk/adoptopenjdk-getting-started-kit/details
Você pode copiar e colar comandos se quiser.

* Abra um Terminal - Clique no botão de início esquerdo do Ubuntu e digite: `Terminal`

* Digite `pwd` para mostrar o diretório atual. Deve ser `/home/openjdk` - se não for `cd /home/openjdk` para essa localização.

### Verificar e criar arquivos de origem ###
Verifique se você tem uma versão inicial dos arquivos de origem do JDK8 digitando:
`$ ls ~/dev`
Isso deve mostrar um diretório chamado `jdk8`, caso contrário execute essas etapas:
* $ `clone hg http://hg.openjdk.java.net/jdk8/jdk8 jdk8` # Recupere inicialmente Crie OpenJDK nesse diretório da seguinte forma:
* $ `cd ~ / dev / jdk8`
* $ `chmod 755 configure && chmod 755 get_source.sh`
* $ `bash get_source.sh` # Busca as fontes mais recentes (incluindo vários subdiretórios)
* $ `bash configure` # Inicializa o processo de compilação com as configurações corretas para o seu sistema / VM
* $ `make clean images` # Construa o JDK. Isso pode demorar um pouco, hora do chá ?!

Isso deve criar o diretório `bin/` contendo `java`,`javac`, etc. Sob o diretório `build`, com um nome correspondente à sua máquina (virtual), algo como:
`build/linux-x86_64-normal-server-release/images/j2sdk-image/bin`
Teste isso executando:
`$ build/linux-x86_64-normal-server-release/images/j2sdk-image/bin/javac -version`
Talvez seja necessário alterar a parte `linux-x86_64-normal-server-release` de acordo com o seu ambiente.
Para compilações subsequentes, se você não fez alterações significativas, tente omitir `clean` e digite apenas:
`$ make images` # Mais rápido e limpo (e pode ser o suficiente).

### Executando seu recém-construído JDK ###
Agora use seu novo JDK para criar e executar um programa simples, como: `system.getProperty("java.version")`
Faça isso diretamente usando o caminho completo para o diretório `bin/` como acima, ou apontando o ambiente para o seu novo JDK usando as seguintes etapas (como antes, você pode precisar alterar o `linux-x86_64-normal-server-release` de acordo ao seu ambiente):
* `$ export JAVA_HOME=/home/openjdk/dev/jdk8/build/linux-x86_64-normal-server-release/images/j2sdk-image`
* `$ export PATH=$JAVA_HOME/bin:$PATH`
Da mesma forma, você pode mudar para outro JDK inspecionando `/usr/lib/jvm`

### Próximos passos ###
Consulte a seção principal [OpenJDK Introdução](https://www.gitbook.com/book/adoptopenjdk/adoptopenjdk-getting-started-kit) e experimente algumas destas ideias:
* Altere a classe [Random.java.](Https://adoptopenjdk.gitbooks.io/adoptopenjdk-getting-started-kit/content/en/intermediate-steps/change_the_randomjava_class.html)
* Altere a classe [StringBuffer.java](https://adoptopenjdk.gitbooks.io/adoptopenjdk-getting-started-kit/content/en/intermediate-steps/change_the_stringbufferjava_class_to_add_a_new_method.html) para adicionar um novo método.
* [Teste o Java mais recente](https://adoptopenjdk.gitbooks.io/adoptopenjdk-getting-started-kit/content/en/intermediate-steps/testing_java_early_project.html) utilizando seu próprio código modificado.
* Criar um JDK diferente, como [jdk9 ou jdk8u](https://adoptopenjdk.gitbooks.io/adoptopenjdk-getting-started-kit/content/en/binaries/build_openjdk_9.html). NOTA: para jdk9 ver o apêndice abaixo
* Confira as opções para o comando `./configure -help`
* Investigar alguns novos recursos [JDK9](http://openjdk.java.net/projects/jdk9/), tais como:
* * Projeto Jigsaw, ver [JEP 220](http://openjdk.java.net/jeps/220) e o [Tutorial](http://blog.codefx.org/java/dev/jigsaw-hands-on- guia/)
* * O Shell Java (Read-Eval-Print Loop) [jshell](http://openjdk.java.net/jeps/222)
* * Nova Versão-String [Esquema](http://openjdk.java.net/jeps/223)
* Experimente a nova infra-estrutura de build Jan'16 que melhora em cerca de 40% o tempo de compilação, consulte [description](http://cr.openjdk.java.net/~ihse/docs/new-hotspot-build.html) e [Lista de endereços](http://mail.openjdk.java.net/mailman/listinfo/build-infra-dev).
* Escolha uma [Java Enhancement Proposal (JEP)](http://openjdk.java.net/jeps/0) para implementar.
* Observe os problemas existentes no [Banco de dados de bugs do JDK](https://bugs.openjdk.java.net/secure/Dashboard.jspa). Clique em um projeto (como JDK) e, em seguida, clique em um ícone à esquerda (por exemplo, Backlog).
* Outras idéias para [principiantes](https://adoptopenjdk.gitbooks.io/adoptopenjdk-getting-started-kit/content/en/how-to-navigate/beginners-level.html), [intermediários](https://adoptopenjdk.gitbooks.io/adoptopenjdk-getting-started-kit/content/en/how-to-navigate/intermediate-level.html) e [avançados](https://adoptopenjdk.gitbooks.io/adoptopenjdk-get-started-kit/content/pt/how-to-navigate/advanced-level.html).

### Apêndice ###

** 25 Jan 2017. Gcc mais recente necessário. **

Se a compilação jdk9 falhar com um erro `/usr/bib/ld`, você precisará de uma versão posterior do gcc 4.6 fornecida pela VM `_1506_`. Para atualizar para o gcc 4.9 faça o seguinte: `sudo add-apt-repository ppa:ubuntu-toolchain-r/test sudo apt-get update sudo apt-get install gcc-4.9 g++-4.9 sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.9 60 --slave /usr/bin/g++ g++ /usr/bin/g++-4.9`