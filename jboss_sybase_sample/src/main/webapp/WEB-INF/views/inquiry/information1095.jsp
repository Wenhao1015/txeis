<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> <%@ page
language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <title>TxEIS : Employee Access - 1095 Information</title>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <%@ include file="../commons/header.jsp"%>
    </head>
    <body class="hold-transition sidebar-mini">
        <div class="wrapper">
            <%@ include file="../commons/bar.jsp"%>

            <main class="content-wrapper" id="content">
                    <section class="content">
                            <h2 class="clearfix no-print section-title">
                                    1095-C Information
                                <div class="right-btn pull-right">
                                    <button class="btn btn-primary" data-toggle="modal" data-target="#electronicConsent">W-2 Consent</button>
                                    <button class="btn btn-primary" onclick="doPrint()">
                                        Print
                                    </button>
                                </div>
                            </h2>
                            <div class="content-white EMP-detail">
                                <div class="print-block print-title">
                                    <div style="text-align:center;margin-bottom:10px;">
                                        Texas ISD<br />1715MAIN STREET<br />Alamo
                                        City,TX46119-4521
                                    </div>
                                    <div style="text-align:center;">
                                        Current Pay Information<br />
                                        <div id="date-now"></div>
                                    </div>
                                </div>
                                <div class="print-block print-table-header">
                                    <div class="flex-line">
                                        <div class="left-title">Employee Name:</div>
                                        <div class="right-conent">
                                            RAYMUNDO R RONQUILLO
                                        </div>
                                    </div>
                                    <div class="flex-line">
                                        <div class="left-title">Employee ID:</div>
                                        <div class="right-conent">000922</div>
                                    </div>
                                    <div class="flex-line">
                                        <div class="left-title">Calendar Year:</div>
                                        <div class="right-conent">2017</div>
                                    </div>
                                    <div class="flex-line">
                                        <div class="left-title">Frequency:</div>
                                        <div class="right-conent">Semimonthly</div>
                                    </div>
                                    <div class="flex-line">
                                        <div class="left-title">
                                            Last Posted Pay Date:
                                        </div>
                                        <div class="right-conent">no pay date</div>
                                    </div>
                                </div>
                                <form
                                    class="no-print searchForm"
                                    action=""
                                    id="selectCalendar"
                                >
                                    <div class="form-group in-line">
                                        <label class="form-title"
                                            >Please select a calendar year:</label
                                        >
                                        <input
                                            class="form-control"
                                            type="text"
                                            name="SearchYear"
                                            id="SearchYear"
                                            readonly
                                        />
                                    </div>
                                </form>
                                <table id="ea1095CParentTbl" class="table border-table responsive-table no-thead print-table">
                                        <thead>
                                            <tr>
                                                <td></td>
                                                <th>All</th>
                                                <th>Jan</th>
                                                <th>Feb</th>
                                                <th>Mar</th>
                                                <th>Apr</th>
                                                <th>May</th>
                                                <th>Jun</th>
                                                <th>Jul</th>
                                                <th>Aug</th>
                                                <th>Sep</th>
                                                <th>Oct</th>
                                                <th>Nov</th>
                                                <th>Dec</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="tr-title">Offer of Coverage</td>
                                                <td data-title="All">1E</td>
                                                <td data-title="Jan"></td>
                                                <td data-title="Feb"></td>
                                                <td data-title="Mar"></td>
                                                <td data-title="Apr"></td>
                                                <td data-title="May"></td>
                                                <td data-title="Jun"></td>
                                                <td data-title="Jul"></td>
                                                <td data-title="Aug"></td>
                                                <td data-title="Sep"></td>
                                                <td data-title="Oct"></td>
                                                <td data-title="Nov"></td>
                                                <td data-title="Dec"></td>
                                            </tr>
                                            <tr>
                                                <td class="tr-title">Employee Share</td>
                                                <td data-title="All"></td>
                                                <td data-title="Jan"></td>
                                                <td data-title="Feb"></td>
                                                <td data-title="Mar"></td>
                                                <td data-title="Apr"></td>
                                                <td data-title="May"></td>
                                                <td data-title="Jun"></td>
                                                <td data-title="Jul"></td>
                                                <td data-title="Aug"></td>
                                                <td data-title="Sep"></td>
                                                <td data-title="Oct"></td>
                                                <td data-title="Nov"></td>
                                                <td data-title="Dec"></td>
                                            </tr>
                                            <tr>
                                                <td class="tr-title">Safe Harbor</td>
                                                <td data-title="All">2C</td>
                                                <td data-title="Jan"></td>
                                                <td data-title="Feb"></td>
                                                <td data-title="Mar"></td>
                                                <td data-title="Apr"></td>
                                                <td data-title="May"></td>
                                                <td data-title="Jun"></td>
                                                <td data-title="Jul"></td>
                                                <td data-title="Aug"></td>
                                                <td data-title="Sep"></td>
                                                <td data-title="Oct"></td>
                                                <td data-title="Nov"></td>
                                                <td data-title="Dec"></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                <p class="table-top-title"><b>Covered Individuals</b></p>
                                <div class="flex self-insured-flex">
                                    <div class="self-insured-tips">If Employer provided self-insured coverage, check the box and enter the information for each covered individual.</div>
                                    <div class="self-insured-check">
                                            <label for="selfInsured">
                                                    Self-Insured:
                                                    <input class="icheck" type="checkbox" name="selfInsured" id="selfInsured">
                                                </label>
                                    </div>
                                    <div class="self-insured-time">
                                            Plan Start Month: 09
                                    </div>
                                </div>
                                <table id="ea1095CTbl" class="table border-table responsive-table no-thead print-table">
                                        <thead>
                                            <tr>
                                                <th>First Name</th>
                                                <th>Middle Name</th>
                                                <th>Last Name</th>
                                                <th>Generation</th>
                                                <th>SSN</th>
                                                <th>DOB</th>
                                                <th>All</th>
                                                <th>Jan</th>
                                                <th>Feb</th>
                                                <th>Mar</th>
                                                <th>Apr</th>
                                                <th>May</th>
                                                <th>Jun</th>
                                                <th>Jul</th>
                                                <th>Aug</th>
                                                <th>Sep</th>
                                                <th>Oct</th>
                                                <th>Nov</th>
                                                <th>Dec</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                                <tr>
                                                    <td data-title="First Name">SUSAN</td>
                                                    <td data-title="Middle Name">R</td>
                                                    <td data-title="Last Name">QUINTERO</td>
                                                    <td data-title="Generation"></td>
                                                    <td data-title="SSN">462-04-5008</td>
                                                    <td data-title="DOB">11-12-1954</td>
                                                    <td data-title="All">
                                                        <label for="allCheck">
                                                            <input class="icheck" type="checkbox" name="allCheck" id="allCheck" title="All" checked disabled>
                                                        </label>
                                                    </td>
                                                    <td data-title="Jan">
                                                            <label for="janCheck">
                                                                <input class="icheck" type="checkbox" name="janCheck" id="janCheck" title="Jan"  disabled>
                                                            </label>
                                                    </td>
                                                    <td data-title="Feb">
                                                            <label for="febCheck">
                                                                    <input class="icheck" type="checkbox" name="febCheck" id="febCheck" title="Feb"  disabled>
                                                                </label>
                                                    </td>
                                                    <td data-title="Mar">
                                                            <label for="marCheck">
                                                                    <input class="icheck" type="checkbox" name="marCheck" id="marCheck"  title="Mar" disabled>
                                                                </label>
                                                    </td>
                                                    <td data-title="Apr">
                                                            <label for="aprCheck">
                                                                    <input class="icheck" type="checkbox" name="aprCheck" id="aprCheck" title="Apr"  disabled>
                                                                </label>
                                                    </td>
                                                    <td data-title="May">
                                                            <label for="mayCheck">
                                                                    <input class="icheck" type="checkbox" name="mayCheck" id="mayCheck" title="May"  disabled>
                                                                </label>
                                                    </td>
                                                    <td data-title="Jun">
                                                            <label for="junCheck">
                                                                    <input class="icheck" type="checkbox" name="junCheck" id="junCheck" title="Jun"  disabled>
                                                                </label>
                                                    </td>
                                                    <td data-title="Jul">
                                                            <label for="julCheck">
                                                                    <input class="icheck" type="checkbox" name="julCheck" id="julCheck" title="Jul"  disabled>
                                                                </label>
                                                    </td>
                                                    <td data-title="Aug">
                                                            <label for="augCheck">
                                                                    <input class="icheck" type="checkbox" name="augCheck" id="augCheck" title="Aug"  disabled>
                                                                </label>
                                                    </td>
                                                    <td data-title="Sep">
                                                            <label for="sepCheck">
                                                                    <input class="icheck" type="checkbox" name="sepCheck" id="sepCheck" title="Sep"  disabled>
                                                                </label>
                                                    </td>
                                                    <td data-title="Oct">
                                                            <label for="octCheck">
                                                                    <input class="icheck" type="checkbox" name="octCheck" id="octCheck" title="Oct"  disabled>
                                                                </label>
                                                    </td>
                                                    <td data-title="Nov">
                                                            <label for="decCheck">
                                                                    <input class="icheck" type="checkbox" name="novCheck" id="novCheck" title="Nov"  disabled>
                                                                </label>
                                                    </td>
                                                    <td data-title="Dec">
                                                            <label for="decCheck">
                                                                    <input class="icheck" type="checkbox" name="decCheck" id="decCheck" title="DEC"  disabled>
                                                                </label>
                                                    </td>
                                                    
                                                </tr>
                                            
                                        </tbody>
                                    </table>
                            </div>
                        </section>
            </main>
        </div>
        <%@ include file="../commons/footer.jsp"%>
        <div
            class="modal fade"
            id="electronicConsent"
            tabindex="-1"
            role="dialog"
            aria-labelledby="electronicConsent"
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
                        <h4 class="modal-title new-title">
                            1095 Electronic Consent
                        </h4>
                    </div>
                    <div class="modal-body">
                        <form action="">
                            <div class="form-group">
                                <textarea class="form-control form-text" name="customMessage" id="" cols="30" rows="6" title="Custom message here" placeholder="Custom message here."></textarea>
                            </div>
                            <div class="form-group">
                                    <div class="checkbox mb-2">
                                        <label for="">
                                            <input class="icheck" type="radio" name="electronicConsent" id="consent" checked> Yes, I consent to electronic access. I agree to access my 1095 Form electronically as described above and 
                                            print my 1095 Form. I do not need a printed copy furnished to me. 
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                            <label>
                                                <input class="icheck" type="radio" name="electronicConsent" id="notConsent"> No, I do not consent to electronic access. I am requesting a paper copy furnished to me.
                                            </label>
                                    </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button
                            class="btn btn-secondary"
                            data-dismiss="modal"
                            aria-hidden="true"
                        >
                            Cancel
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script>
        var myDate = new Date()
        var year = myDate.getFullYear()
        var month = myDate.getMonth() + 1
        var date = myDate.getDate()
        var h = myDate.getHours() //get h (0-23)
        var m = myDate.getMinutes() //get m (0-59)
        var s = myDate.getSeconds()
        if (parseInt(h) < 12) {
            var now =
                getNow(month) +
                '-' +
                getNow(date) +
                '-' +
                year +
                ' ' +
                getNow(h) +
                ':' +
                getNow(m) +
                ' ' +
                'AM'
        } else {
            var hour = parseInt(h) - 12
            var now =
                getNow(month) +
                '-' +
                getNow(date) +
                '-' +
                year +
                ' ' +
                getNow(hour) +
                ':' +
                getNow(m) +
                ' ' +
                'PM'
        }

        function getNow(s) {
            return s < 10 ? '0' + s : s
        }
        document.getElementById('date-now').innerHTML = now
        function doPrint() {
            window.print()
        }
        $(function() {
            $('#SearchYear')
                .fdatepicker({
                    startView: 4,
                    minView: 4,
                    format: 'yyyy'
                })
                .on('changeDate', function(ev) {
                    console.log(ev)
                })
                .data('datepicker')
                $('.icheck').iCheck({
                    checkboxClass: 'icheckbox_square-green',
                    radioClass   : 'iradio_square-green',
                    increaseArea : '20%' // optional
                })
        })
    </script>
</html>
