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
            <h1 class="text-center login-title">Register Here</h1>
            
              <form name="registerform" method="post" action="<@ofbizUrl>createExpenseUser</@ofbizUrl>">
                <input type="text" class="form-control" placeholder="Salutation" name="salutation"/><br/>
                <input type="text" class="form-control" placeholder="First Name" name="firstName" size="20"/><br/>
                <input type="text" class="form-control" placeholder="Middle Name" name="middleName" size="20"/><br/>
                <input type="text" class="form-control" placeholder="Last Name" name="lastName" size="20"/><br/>
                <input type="text" class="form-control" placeholder="User ID" name="userLoginId" size="20"/><br/>
                <input type="password" class="form-control" placeholder="Password" name="currentPassword" size="20"/><br/>
                <input type="password" class="form-control" placeholder="Re-enter Password" name="currentPasswordVerify" size="20"/><br/>
                <input type="text" class="form-control" placeholder="Nick Name" name="nickname" size="20"/><br/>
                <select name="gender" class="form-control">
                    <option value="M">Male</option>
                    <option value="F">Female</option>
                </select><br/>
                <input type="date" class="form-control" name="birthDate"/><br/>
                <select name="maritalStatus" class="form-control">
                    <option value="S">Single</option>
                    <option value="M">Married</option>
                    <option value="P">Separated</option>
                    <option value="D">Divorced</option>
                    <option value="W">Widowed</option>
                </select><br/>
                <input type="hidden" class="form-control" name="groupId" value="FULLADMIN"/><br/>
                
                            
                <button class="btn btn-lg btn-danger btn-block">Register </button>
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