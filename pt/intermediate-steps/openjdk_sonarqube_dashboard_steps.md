# OpenJDK SonarQube Dashboard passos

Nos vamos configurar o sonar para mostrar o dashboard abaixo seguindo os seguintes passos:

* Criando filtros para cada versão do OpenJDK
* Configurando os Widgets no dashboard default


##Criando filtros para cada versão do OpenJDK##

Inicie o SonarQube e confirme que este esta rodando corretamente, em seguinda efetue o login como admin.

1. Para OpenJDK8
    * Clique na barra de navegacão do topo no icone, 'Measure.'
    * Clique 'New Search'
    * Clique 'More Criteria' --> drop down 'Name contains'
    * Digite 'OpenJDK8'
    * No canto direito, Clique 'Buscar.' Somente projetos OpenJDK8 serão mostrados.
<br><br>
2. For OpenJDK9
    * Clique na barra de navegacão do topo no icone, 'Measure.'
    * Clique 'New Search'
    * Clique 'More Criteria' --> drop down 'Name contains'
    * Digite 'OpenJDK9'
    * No canto direito, Clique 'Buscar.' Somente projetos OpenJDK9 serão mostrados.

##Configure o Dashboard##
Nos vamos configurar o SonarQube para mostrar cada versão OpenJDK separadamente.

###OpenJDK8 Dashboard###
1. Na caixa laranja das categorias, existem 4 widgets:
2. Mova o widget que está na direita e coloque em cima do 'Welcome Widget'. Isto fará com que o 'Welcome' se mova para baixo.
3. Na caixa laranja das categorias, selecione a tab de 'Filters'
4. Mova o seu novo Widget abaixo do primeiro
5. Ao lado direito, nos vamos editar o Widget 'Measure Filter as Treemap' para mostrar somente projetos OpenJDK8.

###OpenJDK9 Dashboard###
1. Na caixa laranja das categorias, existem 4 widgets:
2. Mova o widget que está na direita e coloque em cima do 'Welcome Widget'. Isto fará com que o 'Welcome' se mova para baixo.
3. Na caixa laranja das categorias, selecione a tab de 'Filters'
4. Mova o seu novo Widget abaixo do primeiro
5. Ao lado direito, nos vamos editar o Widget 'Measure Filter as Treemap' para mostrar somente projetos OpenJDK9.