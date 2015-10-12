# SonarQube

**Je ne peut sélectionner Rules of Compliance dans Treemaps dans SonarQube?**

Cette option a été suprimée du menu mais en éxécutant la requête suivante pour mettre à jour la table puis en rafraichissant la treemap, Color Metric sera mappé sur RCI (appelée ```violation_density```) :

```
update widget_properties set text_value = 'violations_density' where kee= 'colorMetric’
```

Dans SonarQube 4.5.1, la métrique Violations Density n'est pas visible. On peut utiliser le SQALE Rating, qui est une autre façon de mesurer la [qualité du code](http://www.sonarqube.org/sqale-the-ultimate-quality-model-to-assess-technical-debt/).
