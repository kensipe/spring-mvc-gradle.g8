<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ taglib prefix="gogo" uri="http://www.gogoair.com/" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <%@include file="html-head.jsp"%>

    <%-- kaltura files --%>
    <gogo:script src="/js/config.js"/>
    <gogo:script src='/js/DomGenerator.js'/>
    <gogo:sid/>
    <gogo:script src="/js/WidevineMediaOptimizer.js"/>
    <gogo:script src="/js/enums.js"/>
    <gogo:script src="/js/data-manager.js"/>
    <gogo:script src="/js/context.js"/>
    <gogo:script src="/js/context-mapping.js"/>
    <gogo:script src="/js/content-page.js"/>
    <gogo:script src="/js/governor.js"/>
    <gogo:script src="/js/widget-base.js"/>
    <gogo:script src="/js/widget-featured-items.js"/>
    <gogo:script src="/js/widget-moremoviescontainer.js"/>
    <gogo:script src="/js/widget-moremovies.js"/>
    <gogo:script src="/js/widget-moremoviestitle.js"/>
    <gogo:script src="/js/widget-player.js"/>
    <gogo:script src="/js/email-modal.js"/>

    <%--todo: kgs look into moving this detail out--%>
    <!-- My Library -->
    <gogo:script src="/js/widget-breadcrumbs.js"/>

    <%-- todo: kgs look into moving library out --%>
    <gogo:script src="/js/widget-mylibrary.js"/>

    <%-- Gogo Vision files --%>
    <gogo:script src="/js/gogovision/gogovision.js"/>
    <gogo:script src="/js/gogovision/media-data-service.js"/>
    <gogo:script src="/js/gogovision/breadcrumbs.js"/>
    <gogo:script src="/js/gogovision/search-panel.js"/>
    <gogo:script src="/js/gogovision/search-field.js"/>
    <gogo:script src="/js/gogovision/list-menu.js"/>
    <gogo:script src="/js/gogovision/media-set-menu.js"/>
    <gogo:script src="/js/gogovision/search-results.js"/>
    <gogo:script src="/js/gogovision/media-detail.js"/>
    <gogo:script src="/js/gogovision/catalog-page.js"/>
    <gogo:script src="/js/gogovision/catalog-header.js"/>
    <gogo:script src="/js/gogovision/carousel.js"/>


    <gogo:resourceLink rel="stylesheet" href="/css/carousel.css"/>
    <gogo:script src="/js/lib/ios-timer-fix.js"/>
    <gogo:script src="/js/lib/jquery-carouFredSel-6.1.0.js"/>
    <gogo:script src="/js/lib/jquery.mousewheel.min.js"/>
    <gogo:script src="/js/lib/jquery.touchSwipe.js"/>
    <gogo:script src="/js/lib/jquery.ba-throttle-debounce.min.js"/>

</head>

<body onload="OnLoad()">
<!-- cat master -->

<%@include file="customer-care-modal.jsp"%>

<div id="wrapper">
    <!-- this will only show for CA/scoot, new look for BA/Netjets -->
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

<%--todo: should remove this... this should follow the new page js approach--%>
<decorator:getProperty property="page.onload"/>

<decorator:getProperty property="page.scripts"/>

<gogo:autoJs/>
<gogo:version comment="true"/>

</body>
</html>