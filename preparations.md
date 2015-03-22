# Preparations

* Follow the instructions on https://java.net/projects/adoptopenjdk/pages/InstallJtreg and https://java.net/projects/adoptopenjdk/pages/EclipseProjectForJTReg to learn more about the OpenJDK JTReg. For more details steps to build JTReg have a look at [the link](http://openjdk.java.net/jtreg/build.html).

* Interesting [blog](http://arkangelofkaos.blogspot.co.uk/2013/05/openjdk-test-fest-23rd-march-2013.html) on what to keep in mind before writing tests.

* Have a look at these JTReg tutorial [videos](http://bit.ly/1bT4g7f).<br/>
[Quick Start Guide](http://bit.ly/1fWCqPH) tutorial on jtreg.<br/>

* To see an online help for JTReg perform via command```$ jtreg -onlineHelp```

* If you don't wish to build it on your own, then download the latest JTReg artifact from the [Adopt OpenJDK Cloudbees Jenkin server]( https://adopt-openjdk.ci.cloudbees.com/job/jtreg/lastSuccessfulBuild/artifact/).
After doing the above make a copy of the win32, linux and lib sub-folders from within the dist/jtreg sub-folder into the jtreg folder - to prevent errors when running tests. In some editions, the files in the win32 folder must be made executable (```chmod u+x …```).

