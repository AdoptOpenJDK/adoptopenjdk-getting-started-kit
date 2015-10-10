# Instructions pour le tableau de bord de SonarQube pour OpenJDK

Nous allons configurer l'affichage du tableau de bord de SonarQube en :

* créant un filtre par version d'OpenJDK
* configurant les widgets du tableau de bord par défaut


##Création des filtres pour chaque version d'OpenJDK##

Dans SonarQube, connectez vous en tant qu'admin.

1. Pour OpenJDK 8
    * Cliquez dans la barre du haut, 'Measure.'
    * Cliquez sur 'New Search'
    * Cliquez sur 'More Criteria' --> descendez la liste jusqu'à 'Name contains'
    * Tapez 'OpenJDK8'
    * Sur la droite, cliquez 'Search.' Seuls les projets OpenJDK 8 sont affichés.
<br><br>
2. Pour OpenJDK 9
    * Cliquez dans la barre du haut, 'Measure.'
    * Cliquez sur 'New Search'
    * Cliquez sur 'More Criteria' --> descendez la liste jusqu'à 'Name contains'
    * Tapez 'OpenJDK9'
    * Sur la droite, cliquez 'Search.' Seuls les projets OpenJDK 9 sont affichés.

##Configurer le tableau de bord##
Nous allons configurer SonarQube pour afficher chaque version d'OpenJDK séparément.

###Tableau de bord OpenJDK 8###
1. Sous la boite orange des catégories, vous trouverez 4 widgets :
2. Déplacez le widget sur la droite et placez le au dessus du 'Welcome Widget'. Cela poussera ce dernier vers le bas.
3. Dans la boite orange, sélectionnez l'onglet 'Filters'
4. Déplacez ce nouveau widget sous le premier
5. Sur la droite, modifiez le widget 'Measure Filter as Treemap' pour n'afficher que les projets OpenJDK 8.

###Tableau de bord OpenJDK 9###
1. Sous la boite orange des catégories, vous trouverez 4 widgets :
2. Déplacez le widget sur la droite et placez le au dessus du 'Welcome Widget'. Cela poussera ce dernier vers le bas.
3. Dans la boite orange, sélectionnez l'onglet 'Filters'
4. Déplacez ce nouveau widget sous le premier
5. Sur la droite, modifiez le widget 'Measure Filter as Treemap' pour n'afficher que les projets OpenJDK 9.
