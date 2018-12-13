<div
    class="modal fade"
    id="requestModal"
    tabindex="-1"
    role="dialog"
    aria-labelledby="myModalLabel"
    aria-hidden="true"
>
    <div class="modal-dialog requestFormDialog">
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
                <h4 class="modal-title new-title">New Request</h4>
                <h4 class="modal-title edit-title">Edit Request</h4>
            </div>
            <form id="requestForm" action="submitLeaveRequest" method="post">
                <div class="modal-body requestForm">
                    <input type="hidden" name="leaveId" id="leaveId" />
                    <div class="line-2-flex">
                        <div class="form-group line-left">
                            <label class="form-title"> Leave Type: </label>
                            <div class="valid-wrap">
                                <select class="form-control" name="leaveType">
                                    <option value="1">LOCAL SICK</option>
                                    <option value="2">STATE PERSON</option>
                                    <option value="3">JURY DUTY</option>
                                    <option value="4">SCHOOL BUSINESS</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group line-right">
                            <label class="form-title"> Absence Reason: </label>
                            <div class="valid-wrap">
                                <select class="form-control" id="absenceReason" name="absenseReason">
                                    <option value="JURY DUTY">JURY DUTY</option>
                                    <option value="LOCAL">LOCAL</option>
                                    <option value="SCH BUSINESS">SCH BUSINESS</option>
                                    <option value="STATE PERSONAL">STATE PERSONAL</option>
                                    <option value="STATE SICK">STATE SICK</option>
                                </select>
                            </div>
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
                                <input
                                    class="form-control"
                                    id="startTime"
                                    name="startTime"
                                />
                                <input
                                    type="hidden"
                                    id="startTimeValue"
                                    name="startTimeValue"
                                />
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
                                <input
                                    class="form-control"
                                    id="endTime"
                                    name="endTime"
                                />
                                <input
                                    type="hidden"
                                    id="endTimeValue"
                                    name="endTimeValue"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group has-error dateValidator">
                        <small class="help-block"
                            >The start time can not be greater than the end
                            time!</small
                        >
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
                    <table class="table responsive-table mt-3">
                        <thead>
                            <tr>
                                <th>Leave Type</th>
                                <th>Beginning Balance</th>
                                <th>Advanced / Earned</th>
                                <th>Pending Earned</th>
                                <th>Used</th>
                                <th>Pending Used</th>
                                <th>Available</th>
                                <th>Units</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td data-title="Leave Type">02 - LOCAL SICK</td>
                                <td data-title="Beginning Balance">0.000</td>
                                <td data-title="Advanced / Earned">5.000</td>
                                <td data-title="Pending Earned">0.000</td>
                                <td data-title="Used">1.500</td>
                                <td data-title="Pending Used">1.500</td>
                                <td data-title="Available">2.000</td>
                                <td data-title="Units">DAYS</td>
                            </tr>

                            <tr>
                                <td data-title="Leave Type">
                                    08 - STATE PERSON
                                </td>
                                <td data-title="Beginning Balance">6.000</td>
                                <td data-title="Advanced / Earned">5.000</td>
                                <td data-title="Pending Earned">0.000</td>
                                <td data-title="Used">3.000</td>
                                <td data-title="Pending Used">1.000</td>
                                <td data-title="Available">7.000</td>
                                <td data-title="Units">DAYS</td>
                            </tr>

                            <tr>
                                <td data-title="Leave Type">10 - JURY DUTY</td>
                                <td data-title="Beginning Balance">0.000</td>
                                <td data-title="Advanced / Earned">0.000</td>
                                <td data-title="Pending Earned">0.000</td>
                                <td data-title="Used">0.000</td>
                                <td data-title="Pending Used">0.000</td>
                                <td data-title="Available">0.000</td>
                                <td data-title="Units">DAYS</td>
                            </tr>

                            <tr>
                                <td data-title="Leave Type">
                                    11 - SCHOOL BUSINESS
                                </td>
                                <td data-title="Beginning Balance">0.000</td>
                                <td data-title="Advanced / Earned">0.000</td>
                                <td data-title="Pending Earned">0.000</td>
                                <td data-title="Used">4.500</td>
                                <td data-title="Pending Used">0.000</td>
                                <td data-title="Available">0.000</td>
                                <td data-title="Units">DAYS</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-primary">Submit for Approval</button>
                    <button
                        type="submit"
                        class="btn btn-primary"
                        id="save"
                        name="save"
                    >
                        Save
                    </button>
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
        setStartTime()
        setEndTime()
        let nowTemp = new Date()
        let now = new Date(
            nowTemp.getFullYear(),
            nowTemp.getMonth(),
            nowTemp.getDate(),
            0,
            0,
            0,
            0
        )
        let haveEndDate = false
        var checkin = $('#startDate')
            .fdatepicker({
                startDate: now,
                format: 'mm/dd/yyyy',
                onRender: function(date) {
                    // if(checkout&&haveEndDate){
                    //     return date.valueOf() > checkout.date.valueOf() ? 'disabled' : '';
                    // }
                }
            })
            .on('changeDate', function(ev) {
                let endDate = $('#endDate').val()
                if (
                    ev.date &&
                    (ev.date.valueOf() >= checkout.date.valueOf() || !endDate)
                ) {
                    let newDate = new Date(ev.date)
                    newDate.setDate(newDate.getDate())
                    checkout.update(newDate)
                    $('#endDate').change()
                }
            })
            .data('datepicker')
        var checkout = $('#endDate')
            .fdatepicker({
                startDate: now,
                format: 'mm/dd/yyyy',
                onRender: function(date) {
                    return date.valueOf() < checkin.date.valueOf()
                        ? 'disabled'
                        : ''
                }
            })
            .on('changeDate', function(ev) {})
            .data('datepicker')
    })

    function setStartTime(time) {
        let maxTime = time ? time : new Date(2000, 0, 1, 23, 59)
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
                    minute: 30
                },
                max: maxTime,
                onSet: function(event, inst) {
                    $('#startTimeValue').val(event.valueText)
                    let startDate = $('#startDate').val()
                    let endDate = $('#endDate').val()
                    if (
                        new Date(startDate).valueOf() ==
                        new Date(endDate).valueOf()
                    ) {
                        let startTime = changeFormatTime(event.valueText)
                        let startArray = startTime.split(':')
                        let date = new Date(
                            2000,
                            0,
                            1,
                            startArray[0],
                            startArray[1]
                        )
                        date.setMinutes(date.getMinutes() + 30)
                        setEndTime(date)
                    }
                }
            })
    }
    function setEndTime(time) {
        let minTime = time ? time : new Date(2000, 0, 1, 00, 00)
        let startDate = $('#startDate').val()
        let endDate = $('#endDate').val()
        if (startDate && startDate) {
            if (new Date(startDate).valueOf() == new Date(endDate).valueOf()) {
                let startTime = changeFormatTime($('#startTime').val())
                let startArray = startTime.split(':')
                let date = new Date(2000, 0, 1, startArray[0], startArray[1])
                date.setMinutes(date.getMinutes() + 30)
                minTime = date
            }
        }
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
                    minute: 30
                },
                min: minTime,
                onSet: function(event, inst) {
                    $('#endTimeValue').val(event.valueText)
                }
            })
    }
    function changeFormatTime(value) {
        let array = value.split(/[,: ]/)
        if (array[2] == 'PM') {
            let h
            if (array[0] == 12) {
                h = array[0]
            } else {
                h = parseInt(array[0]) + 12
            }
            return h + ':' + array[1]
        } else {
            return array[0] + ':' + array[1]
        }
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
            submitButtons: '#save',
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
                startTime: {
                    trigger: 'change',
                    message: 'This value is not valid',
                    validators: {
                        notEmpty: {
                            message: 'The start time cannot be empty'
                        }
                    }
                },
                endTime: {
                    trigger: 'change',
                    message: 'This value is not valid',
                    validators: {
                        notEmpty: {
                            message: 'The end time cannot be empty'
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

    $('#save').on('click', function() {
        var bootstrapValidator = $('#requestForm').data('bootstrapValidator')
        bootstrapValidator.validate()
        if (bootstrapValidator.isValid()) {
            console.log('success')
            let startDate = $('#startDate').val()
            let endDate = $('#endDate').val()
            let startTime = changeFormatTime($('#startTime').val())
            let endTime = changeFormatTime($('#endTime').val())
            let start = new Date(startDate + ' ' + startTime)
            let end = new Date(endDate + ' ' + endTime)
            console.log(start)
            console.log(end)
            if (start.valueOf() >= end.valueOf()) {
                $('.dateValidator').show()
                return false
            } else {
                $('.dateValidator').hide()
                $('#requestForm')[0].submit()
            }
        } else return
    })
    function submitRequest() {
        var bootstrapValidator = $('#requestForm').data('bootstrapValidator')
        bootstrapValidator.validate()
        if (bootstrapValidator.isValid()) {
            console.log('success')
            let startDate = $('#startDate').val()
            let endDate = $('#endDate').val()
            let startTime = changeFormatTime($('#startTime').val())
            let endTime = changeFormatTime($('#endTime').val())
            let start = new Date(startDate + ' ' + startTime)
            let end = new Date(endDate + ' ' + endTime)
            console.log(start)
            console.log(end)
            if (start.valueOf() >= end.valueOf()) {
                $('.dateValidator').show()
                return false
            } else {
                return true
            }
        } else return false
    }
</script>
