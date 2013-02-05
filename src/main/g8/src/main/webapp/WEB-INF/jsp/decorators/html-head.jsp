<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

<title><decorator:title default="scoot / juiced by Gogo"/></title><decorator:head/>

<!-- Fav and touch icons -->
<gogo:resourceLink rel="shortcut icon" href="/images/favicon.ico"/>

<gogo:resourceLink rel="stylesheet" href="/css/reset.css"/>

<gogo:resourceLink rel="stylesheet/less" href="/css/layout.less"/>
<gogo:resourceLink rel="stylesheet/less" href="/css/style.less"/>

<!--[if IE 7]>
<gogo:resourceLink rel="stylesheet" href="/css/app-IE-7.css"/>
<![endif]-->
<!--[if IE 8]>
<gogo:resourceLink rel="stylesheet" href="/css/app-IE-8.css"/>
<![endif]-->
<!--[if IE 9]>
<gogo:resourceLink rel="stylesheet" href="/css/app-IE-9.css"/>
<![endif]-->

<!-- LESS setup for development (for production, this will be handled in the 'build' process) -->
<script type="text/javascript">
    less = {
        env: "development", // or "production"
        async: false,       // load imports async
        fileAsync: false,   // load imports async when in a page under
                            // a file protocol
        poll: 1000,         // when in watch mode, time in ms between polls
        functions: {},      // user functions, keyed by name
        dumpLineNumbers: "comments", // or "mediaQuery" or "all"
        relativeUrls: false,// whether to adjust url's to be relative
                            // if false, url's are already relative to the
                            // entry less file
        rootpath: ":/a.com/"// a path to add on to the start of every url
                            //resource
    };
</script>
<gogo:script src="/js/lib/less-1.3.3.min.js"/>

<%-- application specific js--%>
<gogo:script src="/js/application.js"/>

<%-- jquery and 3rd party libs/utils --%>
<gogo:script src="/js/lib/consolelog.min.js"/>
<gogo:script src="/js/lib/jquery-1.7.2.min.js"/>
<gogo:script src="/js/lib/jquery.getUrlParam.js"/>

<gogo:script src="/js/lib/modernizr.js"/>
<gogo:script src="/js/lib/underscore-min.js"/>

<%-- flash files --%>
<gogo:script src="/js/AC_OETags.js"/>
<gogo:script src="/js/flash_check.js"/>

<gogo:script src="/js/gogovision/gogovision.js"/>

<decorator:getProperty property="page.modals"/>
