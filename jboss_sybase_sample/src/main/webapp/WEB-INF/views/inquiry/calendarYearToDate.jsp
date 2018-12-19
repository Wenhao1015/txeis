<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> <%@ page
language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Title</title>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <%@ include file="../commons/header.jsp"%>
    </head>
    <body class="hold-transition sidebar-mini">
        <div class="wrapper">
            <%@ include file="../commons/bar.jsp"%>

            <main class="content-wrapper" id="content">
                <section class="content">
                    <h2 class="clearfix no-print section-title">
                        Calendar Year to Date
                        <button
                            class="btn btn-primary pull-right"
                            onclick="doPrint()"
                        >
                            Print
                        </button>
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
                                <select
                                    id="SearchYear"
                                    class="form-control"
                                    name="SearchYear"
                                >
                                    <option value="2018">2018</option>
                                    <option value="2017">2017</option>
                                    <option value="2016">2016</option>
                                </select>
                            </div>
                        </form>
                        <p class="no-print table-top-title">
                            <b>Frequency: Semimonthly</b>
                        </p>
                        <table
                            class="table border-table responsive-table no-thead print-table"
                        >
                            <tbody>
                                <tr>
                                    <td class="td-title">Contract Pay</td>
                                    <td
                                        class="td-content"
                                        data-title="Contract Pay"
                                    >
                                        21,401.66
                                    </td>
                                    <td class="td-title">Non-Contract Pay</td>
                                    <td
                                        class="td-content"
                                        data-title="Non-Contract Pay"
                                    >
                                        0.00
                                    </td>
                                    <td class="td-title">Supplemental Pay</td>
                                    <td
                                        class="td-content"
                                        data-title="Supplemental Pay"
                                    >
                                        0.00
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td-title">Withholding Gross</td>
                                    <td
                                        class="td-content"
                                        data-title="Withholding Gross"
                                    >
                                        19,003.88
                                    </td>
                                    <td class="td-title">Withholding Tax</td>
                                    <td
                                        class="td-content"
                                        data-title="Withholding Tax"
                                    >
                                        2,497.31
                                    </td>
                                    <td class="td-title">
                                        Earned Income Credit
                                    </td>
                                    <td
                                        class="td-content"
                                        data-title="Earned Income Credit"
                                    >
                                        0.00
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
                                    >
                                        0.00
                                    </td>
                                    <td class="td-title" colspan="2"></td>
                                </tr>
                                <tr>
                                    <td class="td-title">
                                        Employee Dependent Care
                                    </td>
                                    <td
                                        class="td-content"
                                        data-title="Employee Dependent Care"
                                    >
                                        0.00
                                    </td>
                                    <td class="td-title">
                                        Employer Dependent Care
                                    </td>
                                    <td
                                        class="td-content"
                                        data-title="Employer Dependent Care"
                                    >
                                        0.00
                                    </td>
                                    <td class="td-title">
                                        Dependent Care (Employee and Employer)
                                        exceeds $5,000
                                    </td>
                                    <td
                                        class="td-content"
                                        data-title="Dependent Care (Employee and Employer) exceeds $5,000"
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
                                        20,651.82
                                    </td>
                                    <td class="td-title">Medicare Tax</td>
                                    <td
                                        class="td-content"
                                        data-title="Medicare Tax"
                                    >
                                        299.46
                                    </td>
                                    <td class="td-title" colspan="2"></td>
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
                                    <td class="td-title">
                                        Roth 403B After Tax
                                    </td>
                                    <td
                                        class="td-content"
                                        data-title="Roth 403B After Tax"
                                    >
                                        0.00
                                    </td>
                                    <td class="td-title">Taxable Benefits</td>
                                    <td
                                        class="td-content"
                                        data-title="Taxable Benefits"
                                    >
                                        0.00
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td-title">
                                        457 Employee Contribution
                                    </td>
                                    <td
                                        class="td-content"
                                        data-title="457 Employee Contribution"
                                    >
                                        0.00
                                    </td>
                                    <td class="td-title">
                                        457 Employer Contribution
                                    </td>
                                    <td
                                        class="td-content"
                                        data-title="457 Employer Contribution"
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
                                </tr>
                                <tr>
                                    <td colspan="6">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="td-title">
                                        Non-TRS Business Allowance
                                    </td>
                                    <td
                                        class="td-content"
                                        data-title="Non-TRS Business Allowance"
                                    >
                                        0.00
                                    </td>
                                    <td class="td-title">
                                        Non-TRS Reimbursement Base
                                    </td>
                                    <td
                                        class="td-content"
                                        data-title="Non-TRS Reimbursement Base"
                                    >
                                        0.00
                                    </td>
                                    <td class="td-title">
                                        Non-TRS Reimbursement Excess
                                    </td>
                                    <td
                                        class="td-content"
                                        data-title="Non-TRS Reimbursement Excess"
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
                                        Non-TRS Non-Tax Business Allow
                                    </td>
                                    <td
                                        class="td-content"
                                        data-title="Non-TRS Non-Tax Business Allow"
                                    >
                                        0.00
                                    </td>
                                    <td class="td-title">
                                        Non-TRS Non-Tax Non-Pay Allow
                                    </td>
                                    <td
                                        class="td-content"
                                        data-title="Non-TRS Non-Tax Non-Pay Allow"
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
                                    >
                                        1,647.94
                                    </td>
                                    <td class="td-title">TRS Insurance</td>
                                    <td
                                        class="td-content"
                                        data-title="TRS Insurance"
                                    >
                                        139.09
                                    </td>
                                    <td class="td-title" colspan="2"></td>
                                </tr>
                                <tr>
                                    <td class="td-title">
                                        HSA Employer Contribution
                                    </td>
                                    <td
                                        class="td-content"
                                        data-title="HSA Employer Contribution"
                                    >
                                        0.00
                                    </td>
                                    <td class="td-title">
                                        HSA Employee Salary Reduction
                                        Contribution
                                    </td>
                                    <td
                                        class="td-content"
                                        data-title="HSA Employee Salary Reduction Contribution"
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
                                <tr>
                                    <td class="td-title">
                                        Taxed Employer Insurance Contribution
                                    </td>
                                    <td
                                        class="td-content"
                                        data-title="Taxed Employer Insurance Contribution"
                                    >
                                        0.00
                                    </td>
                                    <td class="td-title">
                                        Taxed Employer Group Insurance
                                        Contribution
                                    </td>
                                    <td
                                        class="td-content"
                                        data-title="Taxed Employer Group Insurance Contribution"
                                    >
                                        0.00
                                    </td>
                                    <td class="td-title">
                                        Health Insurance Deduction(s)
                                    </td>
                                    <td
                                        class="td-content"
                                        data-title="Health Insurance Deduction(s)"
                                    >
                                        71.96
                                    </td>
                                </tr>

                                <tr>
                                    <td colspan="6">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="td-title">
                                        Employer-Sponsored Health Coverage
                                    </td>
                                    <td
                                        class="td-content"
                                        data-title=" Employer-Sponsored Health Coverage"
                                    >
                                        1,799.00
                                    </td>

                                    <td class="td-title">Annuity Roth 457b</td>
                                    <td
                                        class="td-content"
                                        data-title="Annuity Roth 457b"
                                    >
                                        0.00
                                    </td>

                                    <td class="td-title" colspan="2"></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </section>
            </main>
        </div>
        <%@ include file="../commons/footer.jsp"%>
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
    </script>
</html>
