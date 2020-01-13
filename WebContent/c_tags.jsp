<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Core Tags</title>
</head>
<body>

<%-- JSTL CORE TAGS --%>
<%--JSTL Core <out> tag --%>
<c:out value="${'Welcome to javaTpoint'}"/>

<hr>

<%--JSTL Core <import> tag --%>
<%--<c:import var="data" url="http://www.javatpoint.com"/>  
<c:out value="${data}"/> --%>

<hr>

<%--JSTL Core <set>, <remove> tags --%>
<c:set var="Income" scope="session" value="${4000*4}"/>
<p>Before Remove Value is: <c:out value="${Income}"/></p>
<c:remove var="Income"/>
<p>After Remove Value is: <c:out value="${Income}"/></p>

<hr>

<%--JSTL Core <catch> tag --%>
<c:catch var="catchTheException"><% int x = 2/0; %></c:catch>
<c:if test="${catchTheException!=null}">
<p>The type of exception is : ${catchTheException}<br/>
There is an exception : ${catchTheException.message}</p></c:if>

<hr>

<%--JSTL Core <if> tag --%>
<c:set var="Income" scope="session" value="${4000*4}"/>
<c:if test="${Income > 8000}">
<p>My income is: <c:out value="${Income}"/></p></c:if>

<hr>

<%--JSTL Core <choose>, <when>, <otherwise> tags --%>
<c:set var="income" scope="session" value="${4000*4}"/>
<p>Your income is : <c:out value="${income}"/></p>
<c:choose>
	<c:when test="${income <= 1000}">
		Income is not good.
	</c:when>
	<c:when test="${income > 10000}">
		Income is very good.
	</c:when>
	<c:otherwise>
		Income is undetermined...
	</c:otherwise>
</c:choose>
<br><br><br>
<c:set value="10" var="num"></c:set>  
<c:choose>  
	<c:when test="${num%2==0}">  
		<c:out value="${num} is even number"></c:out>  
	</c:when>  
	<c:otherwise>  
		<c:out value="${num} is odd number"></c:out>  
	</c:otherwise>  
</c:choose>

<hr>

<%--JSTL Core <forEach> tag --%>
<c:forEach var="j" begin="1" end="3">
	Item <c:out value="${j}"/><p>
</c:forEach>

<hr>

<%--JSTL Core <forTokens> tag --%>
<c:forTokens items="KJ-JY-DH" delims="-" var="name">
	<c:out value="${name}"/><p>
</c:forTokens>

<hr>

<%--JSTL Core <param> tag --%>
<%--<c:url value="/index1.jsp" var="completeURL"/>
<c:param name="trackingID" value="786"/>
<c:param name="user" value="LEE"/>
</c:url>

${completeURL} --%>

<hr>

<%--JSTL Core <redirect> tag --%>
<c:set var="url" value="1" scope="request"/>
<c:if test="${url < 1}">
	<c:redirect url="http://www.javatpoint.com"/>
</c:if>
<c:if test="${url > 1}">
	<c:redirect url="http://www.javatpoint.com"/>
</c:if>

<hr>

<%--JSTL Core <url> tag --%>
<c:url value="/index.jsp"/>
</body>
</html>