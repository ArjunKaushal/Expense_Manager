<div class="col-md-10 col-sm-10">
    <div class="row">
	<div class="col-md-5 col-sm-5 col-xs-12 block1 well showbox sliderright" >
            <ul class="nav">
                <li class="active"><h4>Expense</h4></li>
            </ul>	
            <div id="chartContainer" ></div>				
        </div>				
	<div class="col-md-5 col-sm-5 col-xs-12 block2 well showbox sliderright">
            <h4>Expense</h4>
            <form role="form" class="form-margin"> 
                <div class="form-group">
                                        <label for="date" class="col-xs-3 control-label">Date</label>
                                          <div class="col-xs-8 date" >
                                            <div class="input-group input-append date" id="datePicker" >
                                              <input type="date" class="form-control" id="date" required/>
                                              <span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar"></span></span>
					    </div>						
                                          </div>
                                      </div><br/><br/><br/>
                                      <div class="form-group">
                                        <label for="amount" class="col-xs-3 control-label">Amount</label>
                                        <div class="col-xs-8">
                                          <input type="text" id="amount" class="form-control" required/>
                                        </div>
                                      </div><br/><br/>
                                      <div class="form-group">
                                        <label for="pay" class="col-xs-3 control-label">Payee</label>
                                        <div class="col-xs-8">
                                          <select id="pay" class="form-control" ng-model="payeeSelected"  ng-options="payee for payee in payees"></select>
                                        </div>
                                      </div><br/><br/>
                                      <div class="form-group">
                                        <label for="cat" class="col-xs-3 control-label">Category</label>
                                        <div class="col-xs-8">
                                          <select id="cat" class="form-control" ng-model="categorySelected"  ng-options="category for category in categories"></select>
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
                                        <button type="submit" class="btn btn-primary">Add Expense</button>
                                      </div>
                                    </form>
				</div>
		</div>
	</div>

<div class="col-md-10 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-2" id="tab1">	
  <div class="panel panel-default" >
    <div class="panel-heading"><strong>Expense</strong>
      <div id="search1">
	       <input type="text" ng-model="search" placeholder="Search Expense" >	
      </div>
    </div>
    <div class="panel-body">
    </div>
  </div>
</div>

<#include "Chart1.ftl">