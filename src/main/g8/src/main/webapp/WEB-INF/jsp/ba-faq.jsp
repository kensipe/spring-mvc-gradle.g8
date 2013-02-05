<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="gogo" uri="http://www.gogoair.com/" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><spring:message code="faq.title"/></title>
</head>
<body>
<div id="FAQs" class="UtilityPage">

    <h2 class="accordionButton">Lorem Ipsum</h2>

    <div class="accordionContent">
        <p>
            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
            enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
            in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,
            sunt in culpa qui officia deserunt mollit anim id est laborum.
        </p>
    </div>

</div>

<gogo:analytics page="faq"/>
<gogo:script src="/js/lib/accordion-plugin.js"/>

</body>
</html>