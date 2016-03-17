# What are Rules #

Rules are just schematron 

&lt;assert/&gt;

 or 

&lt;report/&gt;

 elements, which are contained in sch/xslt-std.sch.

I use 

&lt;assert/&gt;

 when the described condition should exist. This either embodies some well known 'gotcha' or best practice I want to maintain.

I use 

&lt;report/&gt;

 when I want to annotate usage, this is helpful in ambiguous situations where extra output may 'jog' the XLST authors mind to focus on common pitfalls of common constructions.

Please review the sch/xslt-std.sch for examples of rules.

# Where is XSLT schematron schema? #

It is surprisingly simple to generate one, but I wanted to get more rule authoring experience before I added on a big chunk of schematron.

# Some ideas for simple rules #

some more ideas for rules I would like to implement;


  * Unused defined modes

  * Undefined modes

  * Undefined named templates

  * unused defined named templates

  * Templates that use name= where match= was probably intended

  * xsl:call-template elements that contain anything other than xsl:with-param

  * Variable/parameter references that are not defined at the point of use

  * Forgot to add @ to attribute, common with prefixed attributes

  * Misunderstanding of addressing attributes or missing brackets with attribute ex. 

&lt;xsl:variable name="testvar" select="test@result"/&gt;




# More difficult rules to implement #

  * Duplicate match patterns

here the following rules would be interested in case sensitivity in elements, attributes and params/vars

  * Same name different caps when addressing element

  * Same name different caps with attributes

  * Same name different caps with param/var

I think these rules are probably all possible ..... though I do not yet have the time to implement.

I am pretty certain anything to do with well formedness is not possible e.g. like the following old chestnuts;

  * added ending angle bracket in middle of xsl:stylesheet element

  * Missing quote in select statement

A lot of these kind of issues can mask other errors as well, complicating debugging.

Note, one of the reasons why I initially opted for Ant as a 'runner' of this whole process is that I could employ some sort of static analysis on xslt (that doesn't depend on well formed xml) before execution ... but this will wait until I have rules sorted out; I would like to eventually consider a simple rule format then transform to Schematron, but this needs some rule authoring experience first.