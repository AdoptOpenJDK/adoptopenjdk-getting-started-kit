# SonarQube

**I’m unable to select Rules of Compliance in Treemaps in SonarQube?**

This option has been removed from the drop-down menu but apply the below SQL to update the table and refresh the treemap, the Color Metric will be mapped to RCI (called ```violation_density```):

```
update widget_properties set text_value = 'violations_density' where kee= 'colorMetric’
```

In SonarQube 4.5.1, the Violations Density metric is not shown. We could use the SQALE Rating, which is another way to measure [code quality](http://www.sonarqube.org/sqale-the-ultimate-quality-model-to-assess-technical-debt/).
