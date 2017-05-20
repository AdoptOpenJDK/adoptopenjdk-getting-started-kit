# Ações adicionais pré-hackday para participantes experientes

##### Construa sua própria VM

Nota: você precisará de boa conexão de internet para baixar os arquivos e tempo suficiente para a compilação terminar. ** Não aconcelhável através de uma conexão wi-fi. **

<br/>
[Construa sua própria VM](../virtual-machines/build_your_own_vm.md) <br/>
[Construa sua própria VM leve](../virtual-machines/build_your_own_lightweight_vm.md)

<br/>
##### Verificar VM
- Carregar a VM na VirtualBox
- Iniciar a VM
- Executar qualquer programa dentro da VM
- Desligar a VM

<br/>
##### Download/cópia de Docker Images
Quando as imagens são baixadas, elas podem ser copiadas de um local ou dispositivo para outro, veja a seção [Copiar Imagens](../docker-images/copy-images.md).

ou
<br/>
##### Construir imagens
Verificar [Construir Images](../docker-images/build-images.md) em imagens do Docker.

<br/>
##### Verificar Imagens
Verificar [Construir Imagens](../docker-images/check-images.md) em Imagens do Docker.

<br/>
##### Verificar instalação e ambiente
Inicie a VM ou Docker container, navegue até as pastas jdk8 ou jdk9 e execute o comando abaixo:

```
bash configure
make clean images
```

Se algo falhar, então o ambiente OpenJDK não está corretamente definido ou o código da OpenJDK está quebrado.

<br/>
##### Finalmente
Quando terminar, vá para a seção [Como navegar e fazer progresso?](how-to-navigate-and-make-progress.md) vá para a próxima etapa para continuar com o fluxo.