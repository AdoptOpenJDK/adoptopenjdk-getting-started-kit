# OpenJDK8 estrutura dos diretórios

Veja a estrutura de diretórios para varios projetos do OpenJDK
(Efetue o download do comando tree para Ubuntu ou instale via ```sudo apt-get install tree```)

Abaixo se encontram outputs completos e ou parciais para as os outputs do comando tree:
 
**OpenJDK (level 1)** <br/>
```$ tree -L 1 -d``` <br/>
![](OpenJDKDirStructureLevel1.png)

**OpenJDK (level 2)** <br/>
```$ tree -L 2 -d``` <br/>
![[[image or output of above command]]](OpenJDKDirStructureLevel2.png)

**build (level 3)** <br/>
```
$ tree -L 3 -d build
build
└── linux-x86_64-normal-server-release
    ├── corba              ⇐ Common Object Request Broker Architecture
    │   ├── btclasses
    │   ├── btjars
    │   ├── classes
    │   ├── dist
    │   ├── gensrc
    │   ├── lib
    │   └── logwrappers
    ├── hotspot                       ⇐ Java, the platform (one part)
    │   ├── dist
    │   ├── linux_amd64_compiler2
    │   └── linux_amd64_docs
    ├── images
    │   ├── j2re-image            ⇐ this folder contains Java 8 JRE 
    │   ├── j2sdk-image           ⇐ this folder contains Java 8 JDK
    │   ├── lib
    │   ├── local_policy_jar.tmp
    │   ├── src
    │   ├── _strip_jdk
    │   ├── _strip_jre
    │   ├── symbols
    │   ├── unsigned
    │   └── US_export_policy_jar.tmp
    ├── jaxp               ⇐ Java API for XML Processing
    ├── jaxws              ⇐ Java API for Web Services
    ├── jdk                ⇐ Java, the language (other part)
    ├── langtools          ⇐ supporting tools for Java, the language
    ├── nashorn            ⇐ Javascript Runtime for the JVM
    └── tmp
```
Na lista acima, os diretórios de jaxp e seguintes estão colapsados de maneira que caibam na pagina.

**Hotspot (all levels)**  <br/>
```$ tree -d hotspot```<br/>
![](HotspotDirStructure.png)

Novamente, os diretórios menos importantes estão colapsados de maneira que caibam na pagina.