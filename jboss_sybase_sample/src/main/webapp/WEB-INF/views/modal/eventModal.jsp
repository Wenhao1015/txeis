<div
    class="modal fade"
    id="requestModal"
    tabindex="-1"
    role="dialog"
    aria-labelledby="myModalLabel"
    aria-hidden="true"
>
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button
                    type="button"
                    class="close"
                    data-dismiss="modal"
                    aria-hidden="true"
                >
                    &times;
                </button>
                <h4 class="modal-title">New Apply</h4>
            </div>
            <form id="requestForm" action="submitLeaveRequest" method="post">
                <div class="modal-body requestForm">
                    <input type="hidden" name="leaveId" />
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
                                <input
                                    class="form-control"
                                    type="text"
                                    name="LeaveStartDate"
                                    id="startDate"
                                    readonly
                                    value=""
                                />
                            </div>
                        </div>

                        <div class="form-group time-right">
                            <label class="form-title"> Time: </label>
                            <div class="valid-wrap">
                                <!--
                                    <select class="form-control" name="LeaveStartDateType">
                                      <option value="0">AM</option>
                                      <option value="1">PM</option>
                                    </select>
                                -->

                                <input class="form-control" id="startTime" />
                            </div>
                        </div>
                    </div>
                    <div class="date-group">
                        <div class="form-group calendar-left">
                            <label class="form-title"> End Date: </label>
                            <div class="valid-wrap">
                                <input
                                    class="form-control"
                                    type="text"
                                    name="LeaveEndDate"
                                    value=""
                                    id="endDate"
                                    readonly
                                />
                            </div>
                        </div>

                        <div class="form-group time-right">
                            <label class="form-title"> Time: </label>
                            <div class="valid-wrap">
                                <!--
                                    <select class="form-control" name="LeaveEndDateType">
                                      <option value="0">AM</option>
                                      <option value="1">PM</option>
                                    </select>
                                -->

                                <input class="form-control" id="endTime" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="form-title"> Remarks : </label>
                        <div class="valid-wrap">
                            <textarea
                                style="height: auto;"
                                class="form-control"
                                name="Remarks"
                                rows="4"
                            ></textarea>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">Save</button>
                    <button
                        class="btn btn-secondary"
                        data-dismiss="modal"
                        aria-hidden="true"
                        id="deleteLeave"
                        onclick="deleteRequest()"
                    >
                        Delete
                    </button>
                    <button
                        class="btn btn-secondary"
                        data-dismiss="modal"
                        aria-hidden="true"
                        id="cancelAdd"
                        onclick="closeRequestForm()"
                    >
                        Cancel
                    </button>
                </div>
            </form>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal -->
</div>
<script>
    $(function() {
        formValidator()
        var nowTemp = new Date()
        var now = new Date(
            nowTemp.getFullYear(),
            nowTemp.getMonth(),
            nowTemp.getDate(),
            0,
            0,
            0,
            0
        )
        $('#startDate').fdatepicker({
            startDate: now,
            format: 'dd/mm/yyyy'
        })
        $('#endDate').fdatepicker({
            startDate: now,
            format: 'dd/mm/yyyy'
        })
        $('#startTime')
            .mobiscroll()
            .time({
                theme: 'ios', // Specify theme like: theme: 'ios' or omit setting to use default
                lang: 'en-UK', // Specify language like: lang: 'pl' or omit setting to use default
                display: 'bubble', // Specify display mode like: display: 'bottom' or omit setting to use default
                mode: 'datetimeTime', // More info about mode: https://docs.mobiscroll.com/3-0-0_beta5/datetime#!opt-mode
                headerText: false, // More info about headerText: https://docs.mobiscroll.com/3-0-0_beta5/datetime#!opt-headerText
                maxWidth: 90,
                timeFormat: 'hh:ii A',
                steps: {
                    hour: 1,
                    minute: 60
                },
                onSet: function(event, inst) {
                    console.log(event)
                    console.log(inst)
                }
            })
        $('#endTime')
            .mobiscroll()
            .time({
                theme: 'ios', // Specify theme like: theme: 'ios' or omit setting to use default
                lang: 'en-UK', // Specify language like: lang: 'pl' or omit setting to use default
                display: 'bubble', // Specify display mode like: display: 'bottom' or omit setting to use default
                mode: 'datetimeTime', // More info about mode: https://docs.mobiscroll.com/3-0-0_beta5/datetime#!opt-mode
                headerText: false, // More info about headerText: https://docs.mobiscroll.com/3-0-0_beta5/datetime#!opt-headerText
                maxWidth: 90,
                timeFormat: 'hh:ii A',
                steps: {
                    hour: 1,
                    minute: 60
                },
                onSet: function(event, inst) {
                    console.log(event)
                    console.log(inst)
                }
            })
    })
    function showRequestForm() {
        $('#leaveId').attr('value', '')
        $("[name='Remarks']").text('')
        $('#requestForm')[0].reset()
        $('#requestForm')
            .data('bootstrapValidator')
            .destroy()
        $('#requestForm').data('bootstrapValidator', null)
        formValidator()
        $('#cancelAdd').show()
        $('#deleteLeave').hide()
    }
    function deleteRequest() {
        var id = $('#leaveId').val()
        $('#deleteId').val(id)
        $('#deleteForm').submit()
    }
    function closeRequestForm() {
        $('#requestForm')
            .data('bootstrapValidator')
            .destroy()
        $('#requestForm').data('bootstrapValidator', null)
        formValidator()
    }
    function formValidator() {
        $('#requestForm').bootstrapValidator({
            live: 'enable',
            message: 'This value is not valid',
            feedbackIcons: {
                valid: 'fa fa-check ',
                // invalid: 'fa fa-times',
                validating: 'fa fa-refresh'
            },
            fields: {
                LeaveStartDate: {
                    trigger: 'change',
                    message: 'This value is not valid',
                    validators: {
                        notEmpty: {
                            message: 'The start date cannot be empty'
                        }
                    }
                },
                LeaveEndDate: {
                    trigger: 'change',
                    message: 'This value is not valid',
                    validators: {
                        notEmpty: {
                            message: 'The end date cannot be empty'
                        }
                    }
                },
                Remarks: {
                    validators: {
                        notEmpty: {
                            message: 'The remarks cannot be empty'
                        }
                    }
                }
            }
        })
    }
</script>
