<div class="modal fade" id="requestModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
      <div class="modal-content">
          <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                  &times;
              </button>
              <h4 class="modal-title">
                  New Apply
              </h4>
          </div>
              <form id="requestForm" action="submitLeaveRequest" method="post">
                  <div class="modal-body requestForm">
                  <input type="hidden" name="leaveId"/>
                  <div class="form-group">
                    <label class="form-title"> Leave Type: </label>
                    <div class="valid-wrap">
                      <select class="form-control" name="leaveType">
                        <option value="1">Annual Leave</option>
                        <option value="2">Sick Leave</option>
                      </select>
                    </div>
                  </div>
                  <div class="date-group">
                    <div class="form-group calendar-left">
                      <label class="form-title"> Start Date: </label>
                      <div class="valid-wrap">
                        <input class="form-control" type="text" name="LeaveStartDate"
                          id="startDate" readonly  value="" />
                      </div>
                    </div>
        
                    <div class="form-group time-right">
                      <label class="form-title"> AM/PM: </label>
                      <div class="valid-wrap">
                        <select class="form-control" name="LeaveStartDateType">
                          <option value="0">AM</option>
                          <option value="1">PM</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div class="date-group">
                    <div class="form-group calendar-left">
                      <label class="form-title"> End Date: </label>
                      <div class="valid-wrap">
                        <input class="form-control" type="text" name="LeaveEndDate" value=""
                          id="endDate" readonly />
                      </div>
                    </div>
        
                    <div class="form-group time-right">
                      <label class="form-title"> AM/PM: </label>
                      <div class="valid-wrap">
                        <select class="form-control" name="LeaveEndDateType">
                          <option value="0">AM</option>
                          <option value="1">PM</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="form-title"> Remarks : </label>
                    <div class="valid-wrap">
                      <textarea style="height: auto;" class="form-control" name="Remarks" rows="4"></textarea>
                    </div>
                  </div>
                </div>
                  <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">Save</button>
                    <button class="btn btn-secondary"  data-dismiss="modal" aria-hidden="true">Cancel</button>
                  </div>
                
              </form>
        
      </div><!-- /.modal-content -->
  </div><!-- /.modal -->
</div>