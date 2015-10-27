<div class="col-md-10 col-sm-10">
    <div>
	<div class="col-md-5 col-sm-5 col-xs-12 block1 well showbox sliderright " >
            <ul class="nav">
		<li class="active"><a href="#/expense"><h4>Expense</h4></a></li>
	    </ul>	
            <div id="chartContainer" ></div>				
	</div>				
	<div class="col-md-5 col-sm-5 col-xs-12 block2 well showbox sliderright">
            <ul class="nav nav-tabs">
		<li  href="#tab1"><a href="#"><h4>Budget</h4></a></li>
            </ul>	
	</div>
    </div>
</div>
<div class="col-md-10 col-md-offset-2 col-sm-10 col-sm-offset-2">
    <div class="col-md-5 col-sm-5 col-xs-12 block1 well  showbox sliderright">
        <ul class="nav nav-tabs">
            <li  href="#tab1"><a href="#"><h4>Upcoming Reminders</h4></a></li>						
	</ul>					
    </div>
    <div class="col-md-5 col-sm-5 col-xs-12 block2 well showbox sliderright " >
        <ul class="nav nav-tabs">
            <li  href="#tab1"><a href="#"><h4>FORECAST</h4></a></li>						
        </ul>	
	<div id="chartContainer2" style="height: 300px; "></div>
    </div>		
</div>

<div class="col-md-10 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-2" >
    <#include "Transaction.ftl">

<#include "Chart1.ftl">
<#include "Chart2.ftl">