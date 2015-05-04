# Windows

**Quando inicio minha VM no VirtualBox, VirtualBox me retorna um erro Error: “amd-v is disabled in bios”**

Para resolver este problema, reinicie o computador e configure a "Virtualization Technology" no menu de "System Configuration".

**Ubuntu guest não pode conectar a internet**

Abra a opção ```Network connections -> Virtual Box Host Only connection -> "Properties" -> Marque a caixinha VirtualBox Bridged Networking Driver```.

Caso o problema persista, confira mais informações no [stackoverflow link](
http://stackoverflow.com/questions/35375/internet-access-in-ubuntu-on-virtualbox).
