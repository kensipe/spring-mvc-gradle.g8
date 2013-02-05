<div id="pageTop">
    <div id="pageLogo">
        <gogo:link controller="catalog" method="index">
            <gogo:img src="/images/logo.png" alt="scoot / juiced by Gogo"/></gogo:link>
        <%--width="277" height="76"--%>
    </div>
    <!-- /pageLogo -->
    <ul id="pageTopNav">
        <gogo:feature feature="nav-home">
            <li id="nav-home">
                <gogo:link controller="catalog" method="index">home</gogo:link>
            </li>
        </gogo:feature>
        <gogo:feature feature="nav-catalog">
            <li id="nav-catalog">
                <gogo:link controller="catalog" method="index">movies</gogo:link>
            </li>
        </gogo:feature>
        <gogo:feature feature="my-library">
            <li id="myLib">
                <gogo:link controller="catalog" method="library"><spring:message code="app.my_library"/></gogo:link>
            </li>
        </gogo:feature>
        <gogo:feature feature="maps">
            <li id="maps">
                <gogo:link controller="catalog" method="index">maps</gogo:link>
            </li>
        </gogo:feature>
        <gogo:feature feature="rss">
            <li id="rss" class="rssLink">
                <gogo:link controller="news" method="index"><spring:message code="app.rss"/></gogo:link>
            </li>
        </gogo:feature>
        <gogo:feature feature="customer-support">
            <li id="custSupport" class="custSupport">
                <a class="custSupport" href="#"><spring:message code="app.customer_support.title"/></a>
            </li>
        </gogo:feature>
        <gogo:feature feature="you-pick">
            <li id="you-pick">
                <gogo:link value="faq">you pick</gogo:link>
            </li>
        </gogo:feature>
        <gogo:feature feature="nav-faq">
            <li id="faq">
                <gogo:link value="faq">faq</gogo:link>
            </li>
        </gogo:feature>
    </ul>
</div>