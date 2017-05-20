# Copiar imagens

As imagens podem ser de portáteis e carregadas de volta para o repositório Docker.

**Salvar uma imagem**
```
docker save -o <caminho para a imagem> <nome da imaem>
```
ou
```
docker save <nome da imagem> > <caminho para salvar a imagem>
```

For e.g.
```
docker save -o base-image-openjdk9.tar neomatrix369/openjdk9-base-image:latest 
```
ou
```
docker save neomatrix369/openjdk9-base-image:latest >  openjdk9-base-image.tar
```
ou

```
docker save neomatrix369/openjdk9-base-image:latest | gzip > openjdk9-base-image.tar.gz
```

```openjdk9-base-image.tar``` ou ```openjdk9-base-image.tar.gz``` são criados no diretório onde a imagem é executada.

**Carregar imagem**
```
docker load -i <caminho para o arquivo .tar>
```
ou

```
docker load < <caminho para o arquivo .tar>
```

Exemplo:
```
docker load -i openjdk9-base-image.tar 
```
ou
```
docker load < openjdk9-base-image.tar
```
ou

```
docker load < gzip < openjdk9-base-image.tar.gz
```
