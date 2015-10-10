# Instructions pour le tableau de bord de SonarQube pour OpenJDK

Nous allons configurer l'affichage du tableau de bord de SonarQube en :

* cr�ant un filtre par version d'OpenJDK
* configurant les widgets du tableau de bord par d�faut


##Cr�ation des filtres pour chaque version d'OpenJDK##

Dans SonarQube, connectez vous en tant qu'admin.

1. Pour OpenJDK 8
    * Cliquez dans la barre du haut, 'Measure.'
    * Cliquez sur 'New Search'
    * Cliquez sur 'More Criteria' --> descendez la liste jusqu'� 'Name contains'
    * Tapez 'OpenJDK8'
    * Sur la droite, cliquez 'Search.' Seuls les projets OpenJDK 8 sont affich�s.
<br><br>
2. Pour OpenJDK 9
    * Cliquez dans la barre du haut, 'Measure.'
    * Cliquez sur 'New Search'
    * Cliquez sur 'More Criteria' --> descendez la liste jusqu'� 'Name contains'
    * Tapez 'OpenJDK9'
    * Sur la droite, cliquez 'Search.' Seuls les projets OpenJDK 9 sont affich�s.

##Configurer le tableau de bord##
Nous allons configurer SonarQube pour afficher chaque version d'OpenJDK s�par�ment.

###Tableau de bord OpenJDK 8###
1. Sous la boite orange des cat�gories, vous trouverez 4 widgets :
2. D�placez le widget sur la droite et placez le au dessus du 'Welcome Widget'. Cela poussera ce dernier vers le bas.
3. Dans la boite orange, s�lectionnez l'onglet 'Filters'
4. D�placez ce nouveau widget sous le premier
5. Sur la droite, modifiez le widget 'Measure Filter as Treemap' pour n'afficher que les projets OpenJDK 8.

###Tableau de bord OpenJDK 9###
1. Sous la boite orange des cat�gories, vous trouverez 4 widgets :
2. D�placez le widget sur la droite et placez le au dessus du 'Welcome Widget'. Cela poussera ce dernier vers le bas.
3. Dans la boite orange, s�lectionnez l'onglet 'Filters'
4. D�placez ce nouveau widget sous le premier
5. Sur la droite, modifiez le widget 'Measure Filter as Treemap' pour n'afficher que les projets OpenJDK 9.
