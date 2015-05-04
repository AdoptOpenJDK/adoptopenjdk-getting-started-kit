# SonarQube

**Porque não consigo selectionar Rules of Compliance no Treemaps SonarQube?**

Esta opção foi removida do drop-down menu mas rodando o SQL abaixo deve atualizar a tabela e efetuar o refresh do treemap, o Color Metric deve ser mapeado para RCI (chamado ```violation_density```):

```
update widget_properties set text_value = 'violations_density' where kee= 'colorMetric’
```

No SonarQube 4.5.1, as "Violations Density metric" não serão mostrados. Uma alternativa seria usar o SQALE Rating [code quality](http://www.sonarqube.org/sqale-the-ultimate-quality-model-to-assess-technical-debt/).
