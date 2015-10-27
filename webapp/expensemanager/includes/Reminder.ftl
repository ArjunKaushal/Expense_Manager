<div class="col-md-10 col-sm-10">
  <div class="btn btn-primary" data-toggle="modal" data-target="#reminderModal">Add Reminder</div>
  <br/>
  <br/>
	
	<div id="reminderModal" class="modal fade" role="dialog">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
		<button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Add a Reminder</h4>
              </div>
              <div class="modal-body">
		<form role="form">
                  <div class="form-group">	
                    <label for="description">Description</label>
                    <input type="text" class="form-control" id="description"/>
                  </div>
                  <br/>
                  <div class="form-group">
                    <label for="dueDate">Due Date</label>
                    <input type="date" id="dueDate" class="form-control"/>
		  </div>
                  <br />
                  <div class="form-group">
                    <label for="amount">Amount</label>
                    <input type="text" id="amount" class="form-control"/>
                  </div>
                  <br />
                  <div class="form-group">
                    <label for="type">Type</label>
                    <select id="type" class="form-control">
                      <option>Expense</option>
                      <option>Income</option>
                    </select>
                  </div>
                  <br />
                  <div class="form-group">
                    <label for="tags">Tags</label>
                    <input type="text" id="tags" class="form-control"/>
                  </div>
                  <br />
                  <button type="submit" class="btn btn-default">Add</button>
                </form>
              </div>
            </div>
	</div>
  </div>
  
  
  
  </div>
