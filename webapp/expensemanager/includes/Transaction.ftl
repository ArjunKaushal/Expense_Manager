<#assign loc=request.getRequestURI().lastIndexOf('/')>
<#assign request=request.getRequestURI().substring(loc+1)>
<#if request=="transaction">
<div class="col-md-10 col-sm-10 col-xs-12" >
</#if>
    <div class="panel panel-default" >
        <div class="panel-heading" style="font-style:bold">Transaction
            <input  id="search1" type="text" placeholder="Search Transaction"/>
	</div>					
	<div class="panel-body">
	</div>
    </div>	
</div>