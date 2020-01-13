<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %> 

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL XML Tags</title>
</head>
<body>
<%--JSTL XML <out> tag --%>
<h2>Vegetable Information:</h2>  
<c:set var="vegetable">  
<vegetables>  
	<vegetable>  
		<name>onion</name>  
		<price>40/kg</price>  
	</vegetable>  
	<vegetable>  
		<name>Potato</name>  
		<price>30/kg</price>  
	</vegetable>  
	<vegetable>  
		<name>Tomato</name>  
		<price>90/kg</price>  
	</vegetable>  
</vegetables>  
</c:set>  
<x:parse xml="${vegetable}" var="output"/>  
<b>Name of the vegetable is</b>:  
<x:out select="$output/vegetables/vegetable[1]/name" /><br>  
<b>Price of the Potato is</b>:  
<x:out select="$output/vegetables/vegetable[2]/price" />

<hr>

<%--JSTL XML <parse> tag --%>
<%--<h2>Books Info:</h2>  
<c:import var="bookInfo" url="novels.xml"/>    
<x:parse xml="${bookInfo}" var="output"/>  
<p>First Book title: <x:out select="$output/books/book[1]/name" /></p>  
<p>First Book price: <x:out select="$output/books/book[1]/price" /></p>  
<p>Second Book title: <x:out select="$output/books/book[2]/name" /></p>  
<p>Second Book price: <x:out select="$output/books/book[2]/price" /></p> --%>
<%--
<books>  
	<book>  
		<name>Three mistakes of my life</name>  
		<author>Chetan Bhagat</author>  
		<price>200</price>  
	</book>  
	<book>  
		<name>Tomorrow land</name>  
		<author>NUHA</author>  
		<price>2000</price>  
	</book>  
</books>
--%>

<hr>

<%--JSTL XML <set> tag --%>
<h3>Books Information:</h3>  
<c:set var="book">  
<books>  
	<book>  
		<name>Three mistakes of my life</name>  
		<author>Chetan Bhagat</author>  
		<price>200</price>  
	</book>  
	<book>  
		<name>Tomorrow land</name>  
		<author>Brad Bird</author>  
		<price>2000</price>  
	</book>  
</books>  
</c:set>  
<x:parse xml="${book}" var="output"/>  
<x:set var="fragment" select="$output/books/book[2]/price"/>  
<b>The price of the Tomorrow land book</b>:  
<x:out select="$fragment" />

<hr>

<%--JSTL XML <choose>, <when>, <otherwise> tags --%>
<h3>Books Information:</h3>  
<c:set var="xmltext">  
<books>  
	<book>  
		<name>Three mistakes of my life</name>  
		<author>Chetan Bhagat</author>  
		<price>200</price>  
	</book>  
	<book>  
		<name>Tomorrow land</name>  
		<author>Brad Bird</author>  
		<price>2000</price>  
	</book>  
</books>  
</c:set>    
<x:parse xml="${xmltext}" var="output"/>  
<x:choose>  
   <x:when select="$output//book/author = 'Chetan bhagat'">  
      Book is written by Chetan bhagat  
   </x:when>  
   <x:when select="$output//book/author = 'Brad Bird'">  
      Book is written by Brad Bird  
   </x:when>  
   <x:otherwise>  
      The author is unknown...  
   </x:otherwise>  
</x:choose>

<hr>

<%--JSTL Xml <if> tag --%>
<h2>Vegetable Information:</h2>  
<c:set var="vegetables">  
<vegetables>  
	<vegetable>  
		<name>onion</name>  
		<price>40</price>  
	</vegetable>  
 	<vegetable>  
		<name>Potato</name>  
		<price>30</price>  
	</vegetable>  
 	<vegetable>  
		<name>Tomato</name>  
		<price>90</price>  
	</vegetable>  
</vegetables>  
</c:set>  
<x:parse xml="${vegetables}" var="output"/>  
<x:if select="$output/vegetables/vegetable/price < 100">  
   Vegetables prices are very low.  
</x:if>

<hr>

<%--JSTL Xml <transform> tag --%>
<%--transfer.xsl --%>
<%--
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">  
<xsl:param name="doc"/>  
<xsl:template match="/">  
<html>  
<body>  
<h2>Company's Employee detail</h2>  
<table border="2">  
<tr>  
<th align="left">Name  
</th>  
<th align="left">Designation  
</th>  
<th align="left">Age  
</th>  
</tr>  
<xsl:for-each select="organisation/company/emp">  
<tr>  
<td>  
<xsl:value-of select="name"/>  
</td>  
<td>  
<xsl:value-of select="designation"/>  
</td>  
<td>  
<xsl:value-of select="age"/>  
</td>  
</tr>  
</xsl:for-each>  
</table>  
</body>  
</html>  
</xsl:template>  
</xsl:stylesheet>  

<%--transfer.xml -->

<?xml version="1.0" encoding="UTF-8"?>  
<organisation>  
<company>  
<emp>  
<name>Rajan Singh</name>  
<designation>Bussiness Developer</designation>  
<age>40</age>  
</emp>    
<emp>  
<name>Supriya Gaur</name>  
<designation>HR Executive</designation>  
<age>22</age>  
</emp>  
</company>  
<company>  
<emp>  
<name>Shashnak Singhal</name>  
<designation>Sr. Java Programmer</designation>  
<age>26</age>  
</emp>  
<emp>  
<name>Hemant Kishor</name>  
<designation>Sr. PHP Programmer</designation>  
<age>23</age>  
</emp></company></organisation> --%>

<%--index.jsp --%>
<%--
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>  
<html>  
<head>  
  <title>x:transform Tag</title>  
</head>  
</html>  
<c:import var="xml" url="transfer.xml" />  
<c:import var="xsl" url="transfer.xsl" />  
<x:transform xml="${xml}" xslt="${xsl}" /> --%> 

<%--JSTL Xml <param> tag --%>
<%--tranfer.xsl --%>
<%--
<?xml version="1.0"?>  
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">  
<xsl:output method="html" indent="yes"/>  
<xsl:param name="bgColor"/>  
<xsl:template match="/">  
  <html>  
  <body>  
   <xsl:apply-templates/>  
  </body>  
  </html>  
</xsl:template>  
<xsl:template match="books">  
  <table border="1" width="60%" bgColor="{$bgColor}">  
    <xsl:for-each select="book">  
      <tr>  
        <td>  
          <b><xsl:value-of select="name"/></b>  
        </td>  
        <td>  
          <xsl:value-of select="author"/>  
        </td>  
        <td>  
          <xsl:value-of select="price"/>  
        </td>  
      </tr>  
    </xsl:for-each>  
  </table>  
</xsl:template>  
</xsl:stylesheet> --%>

<%--index.jsp --%>
<%--
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>  
<html>  
<head>  
  <title>x:transform Tag</title>  
</head>  
<body>  
<h3>Novels Information:</h3>  
<c:set var="xmltext">  
 <books>  
<book>  
  <name>Three mistakes of my life</name>  
  <author>Chetan Bhagat</author>  
  <price>200</price>  
</book>  
<book>  
  <name>Tomorrow land</name>  
  <author>Brad Bird</author>  
  <price>1000</price>  
</book>  
<book>  
  <name>Wings of fire</name>  
  <author>Dr. APJ Abdul Kalam</author>  
  <price>500</price>  
</book>  
</books>  
</c:set>    
<c:import url="transfer.xsl" var="xslt"/>  
<x:transform xml="${xmltext}" xslt="${xslt}">  
   <x:param name="bgColor" value="yellow"/>  
</x:transform>  
  
</body>  
</html>  
 --%>

</body>
</html>