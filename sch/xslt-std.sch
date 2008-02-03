<schema xmlns="http://purl.oclc.org/dsdl/schematron"
		queryBinding='xslt2'>

  <title>XSLT Lint</title>

  <ns prefix="xsl" uri="http://www.w3.org/1999/XSL/Transform"/>


  <pattern> 
     <rule context="xsl:stylesheet">
  	<assert test="@version = '1.0' or @version='2.0'">There are only XSLT version 1.0 or 2.0.</assert>
     </rule>
  </pattern>


  <pattern> 
     <rule context="*[@match]">
  	 <report test="@match=''">empty match attribute</report>
  	 <assert test="count(tokenize(@match,'\[')) - 1 = count(tokenize(@match,'\]')) - 1">unbalanced brackets</assert>
     </rule>
  </pattern>

  <pattern> 
     <rule context="*[@select]">
  	 <report test="@select=''">empty select attribute</report>
  	 <report test="contains(@select,'concat')">ensure 1st arguement to concat() function is an element or quoted text</report>

  	 <assert test="count(tokenize(@select,'\[')) - 1 = count(tokenize(@select,'\]')) - 1">unbalanced brackets</assert>
     </rule>
  </pattern>

  <pattern> 
     <rule context="*[@test]">
  	 <report test="@test=''">empty test attribute</report>
   	 <assert test="count(tokenize(@test,'\[')) - 1 = count(tokenize(@test,'\]')) - 1">unbalanced brackets</assert>
     </rule>
  </pattern>

  <pattern> 
     <rule context="*">
  	 <report test="xsl:parem">incorrect spelling of xsl:param</report>
     </rule>
  </pattern>


</schema>