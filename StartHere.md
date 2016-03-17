# Getting debugxslt #

So far I have not released any packaged version of debugxslt ... so your only method of getting it is by checking out from [subversion](http://code.google.com/p/debugxslt/source).

```
# Non-members may svn check out a read-only working copy anonymously over HTTP.
svn checkout http://debugxlst.googlecode.com/svn/trunk/ debugxslt-read-only
```



# Installation and Dependencies #

If you are using the full distribution you will need the following;

**I**: XSLT v2.0 processor, I recommend downloading Michael Kay's Saxon from www.saxonica.com. You will have to unzip (pref in /lib dir) and amend build.properties as to location and saxon jar name

**II**: Apache Ant [Apache Ant](http://ant.apache.org) is required to run

**III**: [Download](http://www.schematron.com/resource/2007-02-16-ant-schematron-sample.zip) Schematron Ant Task and expand under lib/schematron.

**IV**: Amend your local [build properties](http://debugxslt.googlecode.com/svn/trunk/build.properties) to reflect your setup and where your XSLT processor jars are.

**V**: Amend debugxslt bash script with where your XSLT processor is (using Ant -lib flag)

please read the included [README](http://debugxslt.googlecode.com/svn/trunk/README) for the latest information on how to install debugxslt.

# Usage #

You can use the bash run script to check single XSLT files

> debugxslt myfile.xsl

to run debugxslt test suite run ant Test target

> ant -lib lib/saxon -f build.xml test

Another (perhaps simpler way) option is to just take the rules schematron and run in your own setup.