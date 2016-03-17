# debugxslt v.0.1 #

debugxslt an experimental xslt lint checker that uses schematron (XSLT2 binding).

Lint rules are defined in schematron schema, under sch/xslt-std.sch.

The rest of the distribution is just a small bit of code to easily run schematron (using the just released Schematron Ant Task) test suite.

  * LintRules: what are they and how to create them

  * CurrentStatus: Describes current 'state of play' with debugxslt

  * StartHere: For those who want to install and start checking their xslt

  * [Resources](http://code.google.com/p/debugxslt/wiki/Resources): useful links and references


# what does debugxslt do ? #

debugxslt runs a Schematron produced XSLT transform against your well formed xslt, checking for various common errors like;

  * report xpath issues

  * flag common typos

  * reporting on deviation from best practice


# why do you use schematron, ant, etc ? #

Actually, debugxslt started out life many years ago as a perl module using recdescent parser .... I was convinced that to create a complete debugging solution I needed something that could handle non-well-formed xml ... now I am taking an experimental approach with schematron.

This distribution uses Ant because I find it handy ... there is nothing stopping u taking the Schematron rules (sch/xslt-std.sch) and use yourself in your current compliant Schematron setup (just remember u need XSLT 2.0).


# discuss #

I use a Google Group to manage debugxslt mailing list.

http://groups.google.com/group/debugxslt

debugxslt@googlegroups.com

This group is for general help, discussions (Developer or User) and announcements related to debugxslt.


# contribute #

If you find that this project generates an 'itch' for you and you would like to contribute  code, fix my mistakes or add more lint rules, please contact [me](mailto:james.fuller.2007@gmail.com) for a svn login.


# bugs & features #

Please post any and all bugs and feature requests to [issue tracker](http://code.google.com/p/debugxslt/issues/list)

When submitting please do a quick search of existing issues, it may already be on 'the list'.


# disclaimer #

**WARNING:** debugxslt is ALPHA software

I make no claims on debugxslt fitness for purpose and provide no support (unless one wants to pay ... there is always my consulting company http://www.webcomposite.com ) ...
If u are brave enough to use ALPHA software ... good luck and please report issues if/when you find them.