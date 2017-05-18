# Netbeans

Para ver/editar fontes Java no  Netbeans:
 - Criar um novo projeto "Create new Project"
 - Clicar com o botão direito no projeto e em seguida em Properties
 - Na lista que se encontra ao lado esquerdo, clique na categoria: **sources**
 - Clique no botão ao seu lado direito: **Add Folder**
 - Procure polo diretorio jdk/, que contenha o src, make e test. Exemplo /home/openjdk/dev/jdk9/jdk no Ubuntu VM, or smb://server/user/dev/jdk9/jdk se você estiver usando a opção de vm compartilhada com a [host machine](../virtual-machines/sharing_host_folder_with_guest_vm.md). Aperte OK e espere. Seja paciente, pode demorar um pouquinho.
 - Outra alternativa é escolher um sub-diretorio descrito acima, por exemplo java.base/share/classes e trabalhar apenas com ele, seria um sub-set dos sources e deve carregar mais rapidamente.
