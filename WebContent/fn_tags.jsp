<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Functions</title>
</head>
<body>
<%-- JSTL FUNCTION TAGS --%>
<%--JSTL contains() function --%>
<c:set var="String" value="Welcome to javatpoint"/>
<c:if test="${fn:contains(String, 'javatpoint')}">
	<p>Found javatpoint string</p>
</c:if>
<c:if test="${fn:contains(String, 'JAVATPOINT')}">
	<p>Found JAVATPOINT string</p>
</c:if>

<hr>

<%--JSTL containsIgnoreCase() function --%>
<c:set var="String" value="Welcome to javatpoint"/>
<c:if test="${fn:containsIgnoreCase(String, 'javatpoint')}">
	<p>Found javatpoint string</p>
</c:if>
<c:if test="${fn:containsIgnoreCase(String, 'JAVATPOINT')}">
	<p>Found JAVATPOINT string</p>
</c:if>

<hr>

<%--JSTL endsWith() function --%>
<c:set var="String" value="Welcome to JSP programming"/>
<c:if test="${fn:endsWith(String, 'programming')}">
	<p>String ends with programming</p>
</c:if>
<c:if test="${fn:endsWith(String, 'JSP')}">
	<p>String ends with JSP</p>
</c:if>

<hr>

<%--JSTL escapeXml() function --%>
<c:set var="string1" value="It is first String."/>
<c:set var="string2" value="It is <xyz>second String.</xyz>"/>
<p>With escapeXml() Function:</p>
<p>string-1 : ${fn:escapeXml(string1)}</p>
<p>string-2 : ${fn:escapeXml(string2)}</p>
<p>Without escapeXml() Function:</p>
<p>string-1 : ${string1}</p>
<p>string-2 : ${string2}</p>

<hr>

<%--JSTL indexOf() function --%>
<c:set var="string1" value="It is first string."/>
<c:set var="string2" value="It is <xyz>second string.</xyz>"/>
<p>Index-1 : ${fn:indexOf(string1, "first")}</p>
<p>Index-2 : ${fn:indexOf(string2, "second")}</p>

<hr>

<%--JSTL trim() function --%>
<c:set var="str1" value="Welcome to JSP       programming          "/>
<p>String-1 Length is : ${fn:length(str1)}</p>
<c:set var="str2" value="${fn:trim(str1)}"/>
<p>String-2 Length is : ${fn:length(str2)}</p>
<p>Final value of string is : ${str2}</p>

<hr>

<%--JSTL startsWith() function --%>
<c:set var="msg" value="The Example of JSTL fn:startsWith() Function"/>
The string starts with "The": ${fn:startsWith(msg, 'The')}<br>
The string starts with "Example": ${fn:startsWith(msg, 'Example')}

<hr>

<%--JSTL split(), join() functions --%>
<c:set var="str1" value="Welcome-to-JSP-Programming."/>
<c:set var="str2" value="${fn:split(str1, '-')}"/>
<c:set var="str3" value="${fn:join(str2, ' ')}"/>
<p>String-3 : ${str3}</p>
<c:set var="str4" value="${fn:split(str3, ' ')}"/>
<c:set var="str5" value="${fn:join(str4, '-')}"/>
<p>String-5 : ${str5}</p>

<hr>

<%--JSTL toLowerCase(), toUpperCase() functions --%>
<c:set var="string" value="Welcome to JSP Programming"/>
${fn:toLowerCase("HELLO,")}
${fn:toLowerCase(string)}
<c:set var="site" value="javatpoint.com"/>
<c:set var="author" value="Kyumjae Lee"/>
<p>Hi, This is ${fn:toUpperCase(site)} not developed by ${fn:toUpperCase(author)}.</p>

<hr>

<%--JSTL substring(), substringAfter(), substringBefore() functions --%>
<c:set var="string" value="This is the first string."/>
${fn:substring(string, 5, 17)}
<br>
<c:set var="string" value="Hi, my name is Kyum Jae"/>
${fn:substringAfter(string, "is")}
${fn:substringBefore(string, "is")}
<hr>

<%--JSTL length() function --%>
<c:set var="str1" value="This is first string"/>
<c:set var="str2" value="Hello"/>
Length of the String-1 is : ${fn:length(str1)}<br>
Length of the String-2 is : ${fn:length(str2)}

<hr>

<%--JSTL replace() function --%>
<c:set var="author" value="Kyum Jae"/>
<c:set var="string" value="pqr xyz abc PQR"/>
${fn:replace(author, "Kyum", "Ji")}
${fn:replace(string, "pqr", "hello")}
</body>
</html>
