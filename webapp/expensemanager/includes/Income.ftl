<div class="col-md-10 col-sm-10">
    <div class="col-md-5 col-sm-5 col-xs-12 block1 well showbox sliderright" >
	<ul class="nav">
            <li class="active" href="#tab1"><h4>Expenditure</h4></li>
	</ul>
	<div id="chartContainer"></div>				
    </div>				
    <div class="col-md-5 col-sm-5 col-xs-12 block2 well showbox sliderright">
	<h4>Income</h4>
        <form role="form" class="form-margin"> 
            <div class="form-group">
                <label for="date" class="col-xs-3 control-label">Date</label>
                <div class="col-xs-8 date">
                    <input type="date" class="form-control datepicker" id="date" required/>
                </div>
            </div><br/><br/><br/>
            <div class="form-group">
                <label for="amount" class="col-xs-3 control-label">Amount</label>
                <div class="col-xs-8">
                    <input type="text" id="amount" class="form-control" required/>
                </div>
            </div><br/><br/>
            <div class="form-group">
                <label for="pay" class="col-xs-3 control-label">Payer</label>
                <div class="col-xs-8">
                    <select id="pay" class="form-control"></select>
                </div>
            </div><br/><br/>
            <div class="form-group">
                <label for="cat" class="col-xs-3 control-label">Category</label>
                <div class="col-xs-8">
                    <select id="cat" class="form-control"></select>
                </div>
            </div><br/><br/>
            <div class="form-group">
                <label for="payMethod" class="col-xs-3 control-label">Payment Method</label>
                <div class="col-xs-8">
                    <select id="payMethod" class="form-control" required>
                        <option>Cash</option>
                        <option>Check</option>
                        <option>Credit Card</option>
                        <option>Debit</option>
                        <option>Electronic Transfer</option>
                    </select>
                </div>
            </div><br/><br/>
            <div class="form-group col-xs-offset-3" >&nbsp;&nbsp;&nbsp;
                <button type="submit" class="btn btn-primary">Add Income</button>
            </div>
        </form>
    </div>		
</div>

<div class="col-md-10 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-2" id="tab1">	
  <div class="panel panel-default" >
    <div class="panel-heading"><strong>Income</strong>
      <div id="search1">
	<input type="text"placeholder="Search Income" >	
      </div>
    </div>
    <div class="panel-body">
    </div>
  </div>
</div>

<#include "Chart1.ftl">