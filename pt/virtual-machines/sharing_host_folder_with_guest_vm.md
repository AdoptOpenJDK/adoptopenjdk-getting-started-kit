# Compartindo arquivos locais com sua VM

Esta secao descreve como acessar os fontes do Java que estao dentro da VM desde a sua IDE rodando no seu computador local.
Desta maneira voce podera trabalhar com os aruivos do OpenJDK usando sua IDE favorita, e a VM sera usada apenas para efetuar o build.

Estes passos foram testados em um *Mac OSX 10.10* executando *VirtualBox 4.3.20* em um Ubuntu_12.04_OpenJDK_dev_1 VM.

A solucao ideal seria usar a VirtualBox compartindo os mesmos arquivos juntamente com a maquina local. Esta solucao foi testada porem infelizmente nao funcionou muito bem. Desconfiamos que o OpenJDK build possue problemas para executar quando em uma pasta compartida, acreditamos que o problema seja em arquivos C++ e headers pre-compilados. Por hora vamos deixar a vm rodando e usaremos Samba para compartir os arquivos. Veja mais detalhes abaixo.

### 1. Configure o Samba em sua VM

Edite os arquivos config:

```bash
sudo gedit /etc/samba/smb.conf
```

Efetue uma busca por **[homes]** e verifique que as linhas abaixo estao descomentadas:
```ini
[homes]
comment = Home Directories
browseable = yes
writable = yes
```
Reinicie o servico Samba:

```bash
sudo restart smbd
```

### 4. Defina um IP estatico para a VM

No menu da VM (Virtualbox): **Machine > Network> Attached to:**
 - Encontre o menu **Attached to** selecione o dropdown **Bridged Adapter**
 - Encontre o dropdown **Name**  e selecione a opcao que inicar com **en0:**

Sete a VM subnet para que seja a mesma onde esta o host. No host, rode o comando `ifconfig` e selecione a subnet, 200.200.0.xxx (por exemplo). Se estiver usando windows use o comando `ipconfig`. Escolha um endereco ainda nao ultilizado, 200.200.0.129 (exemplo).

Na VM, selecione o IP, subnet e DNS ultilizando o menu **System Settings**:
 - Clique **Network**
 - Clique em **Wired** que se encontra a sua esquerda
 - Pressione **Options**
 - Selecione a tab **IPv4**
 - No dropdown **Method** selecione **Manual**
 - Abaixo, em **Addresses** clique **Add** and entre com os dados:
  - IP escolhido (200.200.0.129)
  - A netmask (255.255.255.0)
  - O gateway (200.200.0.90)
  - O DNS (200.200.0.90)
 - Finalmente pressione **Save**

Para verificar os settings da network, envie um sinal de ping:
```bash
ping 200.200.0.129
```

### 3. Conecte sua maquina local
Efetue o Map do seu shared drive / arquivos :
 - Server: **openjdk** (ou ip 200.200.0.129)
 - User: **OpenJDK**

Exemplo Windows: Mapeie um driver para **\\\\200.200.0.129\OpenJDK**

Exemplo Mac: Abra o Finder, e pressione CMD-K em seguida conecte a **smb://200.200.0.129/openjdk**


Veja mais detalhes [neste artigo](http://www.howtogeek.com/howto/ubuntu/share-ubuntu-home-directories-using-samba/) ou [este]( http://superuser.com/questions/241825/share-virtualbox-folders-in-reverse-guest-host) .


### 4. Editando com sua IDE
Apos compartir os arquivos fonte com sua VM Ubuntu, Sugerimos que seja feita a instalacao de uma das IDEs abaixo:
 * [IntelliJ](../source-code/loading_openjdk_in_intellij.md)
 * [Eclipse](../source-code/loading_openjdk_in_eclipse.md)
 * [Netbeans](../source-code/loading_openjdk_in_netbeans.md)

 