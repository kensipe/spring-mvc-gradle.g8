<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="gogo" uri="http://www.gogoair.com/" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><spring:message code="unavailable.title"/></title>
</head>
<body>
<gogo:analytics page="500"/>

<div id="Unavailable" class="UtilityPage">
    <h1 id="contentTitle">
        Page Unavailable
    </h1>

    <p><spring:message code="unavailable.page.unavailable"/></p>

    <p><spring:message code="unavailable.page.reason"/></p>

    <p><spring:message code="unavailable.page.refresh"/></p>

</div>
</body>

<content tag="contentHeader">

    <div id="contentHdr">
        <h1 class="UtilityPageHdr"><spring:message code="unavailable.content.header"/></h1>
    </div>
    <!-- /contentHdr -->
</content>

<%@include file="ca-side-bar.jsp"%>

</html>