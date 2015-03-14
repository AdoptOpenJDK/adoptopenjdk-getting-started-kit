# Mercurial

**My OpenJDK8 does not build, why? I get an “Http: Error 404: Not Found”.**

There has been a change to the address to mercurial repo for openjdk8, its changed from

http://hg.openjdk.java.net/jdk8/tl

to 

http://hg.openjdk.java.net/jdk8/jdk8

jdk8 Updates are available from 
http://hg.openjdk.java.net/jdk8u/jdk8u

All hg clone commands should use the latter address, a solution to the problem can be found below under Download source by running... (#heading=h.fuqz6rlsthji).

I’m unable to select Rules of Compliance in Treemaps in SonarQube?

This option has been removed from the drop-down menu but apply the below SQL to update the table and refresh the treemap, the Color Metric will be mapped to RCI (called violation_density):

update widget_properties set text_value = 'violations_density' where kee= 'colorMetric’

In SonarQube 4.5.1, the Violations Density metric is not shown. We could use the SQALE Rating, which is another way to measure code quality - http://www.sonarqube.org/sqale-the-ultimate-quality-model-to-assess-technical-debt/ 

**I get an “HTTP Error 404: Not Found” when downloading sources  (when I run ./get_sources.sh) for the various repos**

*Fix 1*

Edit all the .hg/hgrc file in the root repo ($HOME/SOURCE/jdk8_tl) along with those in repos hotspot, jaxws, jaxp, corba, nashorn, jdk, langtools, and change all references to .../tl/... to .../jdk8/… For example, change the below setting,

default = http://hg.openjdk.java.net/jdk8/tl/hotspot

to 

default = http://hg.openjdk.java.net/jdk8/jdk8/hotspot

in the hotspot repo, and save the file. Rename the jdk8_tl folder to jdk8:

$ cd ..
$ mv jdk8_tl jdk8

- or -

*Fix 2*
$ cd ..

$ mv jdk8_tl jdk8_tl_backup

$ hg clone http://hg.openjdk.java.net/jdk8/jdk8

$ cd jdk8

$ chmod u+x get_source.sh

$ ./get_source.sh

$ bash configure

When the above steps work, remove the backup folder with

$ rm -fr jdk8_tl_backup

All references to jdk8_tl will change to jdk8. 