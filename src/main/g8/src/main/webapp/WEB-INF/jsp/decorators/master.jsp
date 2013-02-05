<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ taglib prefix="gogo" uri="http://www.gogoair.com/" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <%@include file="html-head.jsp"%>
    <gogo:script src="/js/email-modal.js"/>
</head>

<body>

<%@include file="customer-care-modal.jsp"%>

<div id="wrapper">

    <%@include file="page-top-nav.jsp" %>

    <div id="contentWrap">

        <div id="content">

            <decorator:getProperty property="page.contentHeader"/>

            <div id="contentBody">
                <div id="main">
                    <decorator:body/>
                </div>
                <!-- /main -->
                <decorator:getProperty property="page.side-bar"/>
            </div>
            <!-- /contentBody -->

        </div>
        <!-- /content -->
    </div>
    <!-- /contentWrap -->
</div>
<!-- /wrapper -->

<%@include file="page-bottom.jsp"%>


<decorator:getProperty property="page.modals"/>

<decorator:getProperty property="page.scripts"/>



<gogo:autoJs/>
<gogo:version comment="true"/>

</body>
</html>