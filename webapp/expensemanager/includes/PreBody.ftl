<html lang="en">
  <head>
    <title>${layoutSettings.companyName}</title>
    <meta name="viewport" content="width=device-width, user-scalable=no"/>
    <#if webSiteFaviconContent?has_content>
      <link rel="shortcut icon" href="">
    </#if>
    <#list styleSheets as styleSheet>
      <link rel="stylesheet" href="${StringUtil.wrapString(styleSheet)}" type="text/css"/>
    </#list>
    <#list javaScripts as javaScript>
      <script type="text/javascript" src="${StringUtil.wrapString(javaScript)}"/></script>
    </#list>
    <#if layoutSettings.javaScripts?has_content>
        <#assign javaScriptsSet = Static["org.ofbiz.base.util.UtilMisc"].toSet(layoutSettings.javaScripts)/>
        <#list layoutSettings.javaScripts as javaScript>
            <#if javaScriptsSet.contains(javaScript)>
                <#assign nothing = javaScriptsSet.remove(javaScript)/>
                <script src="<@ofbizContentUrl>${StringUtil.wrapString(javaScript)}</@ofbizContentUrl>" type="text/javascript"></script>
            </#if>
        </#list>
    </#if>
  </head>
  <body>
    
    <div class="col-md-2 col-sm-2 col-xs-12 con">
	
	<nav class="navbar navbar-default nav-stacked" role="navigation" id="nav1">
    <div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mynavbar-content">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
                
        <a class="navbar-brand" href="<@ofbizUrl>main</@ofbizUrl>">Expense Manager</a>
	</div>
	<div class="collapse navbar-collapse navbar-ex1-collapse"  id="mynavbar-content">
		<ul class="nav navbar-nav">
			<li class="active animate"><a href="<@ofbizUrl>main</@ofbizUrl>">DASHBOARD</a></li>
			<li class="dropdown animate">
			<a href="<@ofbizUrl>transaction</@ofbizUrl>" class="dropdown-toggle"> Transaction</a>
			</li>
			<li class="animate"><a href="<@ofbizUrl>income</@ofbizUrl>">Income</a></li>
			<li class="animate"><a href="#/budget">Budget</a></li>
			<li class="animate"><a href="<@ofbizUrl>expense</@ofbizUrl>">Expense</a></li>
			<li class="animate"><a href="<@ofbizUrl>activity</@ofbizUrl>">Activity</a></li>
			<li class="animate"><a href="<@ofbizUrl>reminder</@ofbizUrl>">Reminders</a></li>
			</ul>
		</div>
	</nav>
	</div>
 