<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="gogo" uri="http://www.gogoair.com/" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><spring:message code="faq.title"/></title>
</head>
<body>
<div id="FAQs" class="UtilityPage">

    <h2 class="accordionButton">How do I watch ScooTV?</h2>

    <div class="accordionContent">
        <p>For just SGD16, you can watch as many titles as your flight time allows. After completing your purchase, simply add titles to "My Library," sit back, and enjoy!</p>
    </div>

    <h2 class="accordionButton">How does streaming work?</h2>

    <div class="accordionContent">
        <p>Video content is delivered wirelessly from our onboard server directly to your Wi-Fi enabled laptop or tablet. Once you complete your purchase, simply add titles to “My Library,” sit back, and enjoy the shows!</p>
    </div>

    <h2 class="accordionButton">How can I get started?</h2>

    <div class="accordionContent">
        <p>To access ScooTV, switch on your Wi-Fi device when your flight crew gives the OK, connect to the ‘gogoinflight&rsquo; signal, and
            launch your browser.</p>

        <p>iPad apps are only downloadable directly from iTunes. Download the Gogo Video Plugin from iTunes when you are connected to the
            Internet on the ground before your next flight.</p>
    </div>

    <h2 class="accordionButton">What forms of payment can I use for streaming ScooTV?</h2>

    <div class="accordionContent">
        <p>You can pay with a major credit card on board your flight.</p>
    </div>

    <h2 class="accordionButton">I can&rsquo;t seem to access ScooTV, what do I do?</h2>

    <div class="accordionContent">
        <p>If you have purchased ScooTV, have a valid access code, and still cannot get ScooTV:</p>
        <ul>
            <li>Check if you have downloaded the necessary plugins and you have a supported device, approach our cabin crew for
                assistance.
            </li>
            <li>If you have received an Access Code but you are unable to access ScooTV, check the list of supported devices below.

            </li>
            <li>If you are unable to connect to the cabin server at all, email Gogo when you land at customercare@gogoinflight.com. It could be that the cabin server is experiencing
                downtime due to satellite connectivity issues.
            </li>

            <li>
                If you have non-standard browser settings or settings tailored for a dial-up internet connection, you may have trouble accessing the Gogo inflight network at times. There are infinite variations on browser settings, but the general rule of thumb is, if you can connect to a public wi-fi hot spot, you’ll be able to connect to ScooTV.
            </li>

        </ul>
        <p>For assistance, email Gogo when you land at customercare@gogoinflight.com. We regret that no refunds are offered for ScooTV.</p>
    </div>

    <h2 class="accordionButton">Supported devices</h2>

    <div class="accordionContent">
        <h3>Mobile devices</h3>
        <ul>
            <li>iPad, iPad2, and the new 3rd generation iPad with the Gogo Video Plugin app installed prior to flight.
            </li>
            <li>iOS 5 and above</li>
            <li>Safari Browser</li>
            <li>Samsung Galaxy Tab 10.1&rdquo;</li>
            <li>Android OS 3.2</li>
            <li>Android Browser</li>
            <li>Motorola Xoom</li>
            <li>Android OS 3.2</li>
            <li>Android Browser</li>
        </ul>

        <h3>Windows XP, Vista, and 7</h3>
        <ul>
            <li>Internet Explorer (IE) 7 and above</li>
            <li>Firefox 13 and above</li>
            <li>Google Chrome 19 and above</li>
        </ul>

        <h3>Mac 10.4-10.6</h3>
        <ul>
            <li>Safari 5 and above</li>
            <li>Firefox 13 and above</li>
        </ul>
    </div>
</div>

<gogo:analytics page="faq"/>
<gogo:script src="/js/lib/accordion-plugin.js"/>

</body>

<content tag="contentHeader">

    <div id="contentHdr">
        <h1 id="FAQtitle" class="UtilityPageHdr">
            <spring:message code="faq.content.header"/>
        </h1>
    </div>
    <!-- /contentHdr -->
</content>

<%@include file="ca-side-bar.jsp"%>
</html>