<content tag="side-bar">

    <gogo:feature feature="non-movie-side-bar">
        <div id="sideBar">
            <gogo:authorized paid="false">
                <div id="sidebarHow" class="sideContent">
                    <h2><spring:message code="app.moviepass_how.title"/></h2>

                    <p><spring:message code="app.moviepass_how.message"/></p>
                </div>
                <!-- /sideContent -->
            </gogo:authorized>

            <div id="sidebarDownld" class="sideContent">
                <h2><spring:message code="app.download.title"/></h2>

                <p><spring:message code="app.download.message"/></p>
            </div>
            <!-- /sideContent -->
            <div id="sidebarPay" class="sideContent">
                <h2><spring:message code="app.payhelp.title"/></h2>

                <p><spring:message code="app.payhelp.message"/></p>
            </div>

            <div id="sidebarHelp" class="sideContent">
                <h2><spring:message code="app.needhelp.title"/></h2>

                <p>
                    <gogo:link value="faq"><spring:message code="app.needhelp.assistance"/></gogo:link>
                </p>
            </div>
            <!-- /sideContent -->
            <div id="sidebarBanner">

            </div>

        </div>
        <!-- /sideBar -->
    </gogo:feature>
</content>
