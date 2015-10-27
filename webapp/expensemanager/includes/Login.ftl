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
    <#assign username="">
  </head>
  <body>
        
    <#assign username = requestParameters.USERNAME?default((sessionAttributes.autoUserLogin.userLoginId)?default(""))>
    <#if username != "">
        <#assign focusName = false>
    <#else>
        <#assign focusName = true>
    </#if>
          <div class="col-xs-6 col-md-4 col-sm-4 col-xs-offset-3 col-sm-offset-4 col-md-offset-4">
            <h1 class="text-center login-title">Expense Manager</h1>
            
              <form name="loginform" method="post" action="<@ofbizUrl>login</@ofbizUrl>"> 
                <input type="text" class="form-control" placeholder="Username" name="USERNAME" value="${username}" size="20"/><br/>
                <input type="password" class="form-control" placeholder="Password" name="PASSWORD" value="" size="20"/><br/>
                <button class="btn btn-lg btn-primary btn-block" type="submit">${uiLabelMap.CommonLogin}</button>
                <button class="btn btn-lg btn-danger btn-block"><a href="">${uiLabelMap.RegisterNew}</a></button>
                <input type="hidden" name="JavaScriptEnabled" value="N"/>
              
            </div>
          </div>
        

        <script language="JavaScript" type="text/javascript">
          document.loginform.JavaScriptEnabled.value = "Y";
          <#if focusName>
            document.loginform.USERNAME.focus();
          <#else>
            document.loginform.PASSWORD.focus();
          </#if>
        </script>
    </body>
</html>