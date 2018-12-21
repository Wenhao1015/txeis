<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> <%@ page
language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <title>TxEIS : Employee Access - W-2 Information</title>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <%@ include file="../commons/header.jsp"%>
    </head>
    <body class="hold-transition sidebar-mini">
        <div class="wrapper">
            <%@ include file="../commons/bar.jsp"%>

            <main class="content-wrapper" id="content">
                    <section class="content">
                            <h2 class="clearfix no-print section-title">
                                W-2 Information
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
                                        <label class="form-title"  for="SearchYear"
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
                                <table
                                    class="table border-table responsive-table no-thead print-table"
                                >
                                    <tbody>
                                        <tr>
                                            <td class="td-title">Taxable Gross Pay</td>
                                            <td
                                                class="td-content"
                                                data-title="Taxable Gross Pay"
                                            >
                                                63,949.21
                                            </td>
                                            <td class="td-title">Withholding Tax</td>
                                            <td
                                                class="td-content"
                                                data-title="Withholding Tax"
                                            >
                                                9,605.70
                                            </td>
                                            <td class="td-title">Pension</td>
                                            <td class="td-content" data-title="Pension">
                                                Y
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td-title">FICA Gross</td>
                                            <td
                                                class="td-content"
                                                data-title="FICA Gross"
                                            >
                                                0.00
                                            </td>
                                            <td class="td-title">FICA Tax</td>
                                            <td
                                                class="td-content"
                                                data-title="FICA Tax"
                                                colspan="3"
                                            >
                                                0.00
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td-title">Medicare Gross</td>
                                            <td
                                                class="td-content"
                                                data-title="Medicare Gross"
                                            >
                                                69,449.36
                                            </td>
                                            <td class="td-title">Medicare Tax</td>
                                            <td
                                                class="td-content"
                                                data-title="Medicare Tax"
                                                colspan="3"
                                            >
                                                1,006.99
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td-title">
                                                Earned Income Credit
                                            </td>
                                            <td
                                                class="td-content"
                                                data-title="Earned Income Credit"
                                            >
                                                0.00
                                            </td>
                                            <td class="td-title">Dependent Care</td>
                                            <td
                                                class="td-content"
                                                data-title="Dependent Care"
                                                colspan="3"
                                            >
                                                0.00
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="6">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="td-title">Annuity Deduction</td>
                                            <td
                                                class="td-content"
                                                data-title="Annuity Deduction"
                                            >
                                                0.00
                                            </td>
                                            <td class="td-title">457 Withdraw</td>
                                            <td
                                                class="td-content"
                                                data-title="457 Withdraw"
                                            >
                                                0.00
                                            </td>
                                            <td class="td-title">
                                                457 Annuities - Box 12
                                            </td>
                                            <td
                                                class="td-content"
                                                data-title="457 Annuities - Box 12"
                                            >
                                                0.00
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td-title">Cafeteria 125</td>
                                            <td
                                                class="td-content"
                                                data-title="Cafeteria 125"
                                            >
                                                2,118.72
                                            </td>
                                            <td class="td-title">
                                                Roth 403B After Tax
                                            </td>
                                            <td
                                                class="td-content"
                                                data-title="Roth 403B After Tax"
                                                colspan="3"
                                            >
                                                0.00
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="6">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="td-title">
                                                Non-TRS Business Expense
                                            </td>
                                            <td
                                                class="td-content"
                                                data-title="Non-TRS Business Expense"
                                            >
                                                0.00
                                            </td>
                                            <td class="td-title">Taxable Allowance</td>
                                            <td
                                                class="td-content"
                                                data-title="Taxable Allowance"
                                            >
                                                0.00
                                            </td>
                                            <td class="td-title">
                                                Emp Business Expense
                                            </td>
                                            <td
                                                class="td-content"
                                                data-title="Emp Business Expense"
                                            >
                                                0.00
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td-title">
                                                Moving Expense Reimbursement
                                            </td>
                                            <td
                                                class="td-content"
                                                data-title="Moving Expense Reimbursement"
                                            >
                                                0.00
                                            </td>
        
                                            <td class="td-title">
                                                Emplr Sponsored Health Coverage
                                            </td>
                                            <td
                                                class="td-content"
                                                data-title="Emplr Sponsored Health Coverage"
                                            >
                                                5,928.00
                                            </td>
        
                                            <td class="td-title">Annuity Roth 457b</td>
                                            <td
                                                class="td-content"
                                                data-title="Annuity Roth 457b"
                                            >
                                                0.00
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="6">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="td-title">
                                                TRS Salary Reduction
                                            </td>
                                            <td
                                                class="td-content"
                                                data-title="TRS Salary Reduction"
                                                colspan="5"
                                            >
                                                5,500.15
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="6">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="td-title">
                                                Taxed Life Contribution
                                            </td>
                                            <td
                                                class="td-content"
                                                data-title="Taxed Life Contribution"
                                            >
                                                0.00
                                            </td>
                                            <td class="td-title">
                                                Health Insurance Deduction
                                            </td>
                                            <td
                                                class="td-content"
                                                data-title="Health Insurance Deduction"
                                            >
                                                246.72
                                            </td>
                                            <td class="td-title">
                                                Taxable Fringe Benefits
                                            </td>
                                            <td
                                                class="td-content"
                                                data-title="Taxable Fringe Benefits"
                                            >
                                                0.00
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="6">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="td-title">
                                                Health Savings Account
                                            </td>
                                            <td
                                                class="td-content"
                                                data-title="Health Savings Account"
                                            >
                                                0.00
                                            </td>
                                            <td class="td-title">Non-Tax Sick Pay</td>
                                            <td
                                                class="td-content"
                                                data-title="Non-Tax Sick Pay"
                                            >
                                                0.00
                                            </td>
        
                                            <td class="td-title">HIRE Exempt Wages</td>
                                            <td
                                                class="td-content"
                                                data-title="HIRE Exempt Wages"
                                            >
                                                0.00
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
                            W-2 Electronic Consent
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
                                            <input class="icheck" type="radio" name="electronicConsent" id="consent" checked> Yes, I consent to electronic access. I agree to access my W-2 Form electronically as described above and 
                                            print my W-2 Form. I do not need a printed copy furnished to me. 
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
