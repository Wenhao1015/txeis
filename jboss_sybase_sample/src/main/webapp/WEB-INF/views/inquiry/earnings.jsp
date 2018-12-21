<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> <%@ page
language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <title>TxEIS : Employee Access -  Earnings</title>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <%@ include file="../commons/header.jsp"%>
    </head>
    <body class="hold-transition sidebar-mini">
        <div class="wrapper">
            <%@ include file="../commons/bar.jsp"%>

            <main class="content-wrapper" id="content">
                    <section class="content">
                            <h2 class="clearfix no-print section-title">
                                Earnings
                                <button
                                    class="btn btn-primary pull-right"
                                    onclick="doPrint()"
                                >
                                    Print
                                </button>
                            </h2>
                            <div class="content-white EMP-detail earningPage">
                                <div class="print-block print-title">
                                    <div style="text-align:center;margin-bottom:10px;">
                                        Texas ISD<br />Earnings
                                        <div id="date-now"></div>
                                    </div>
                                </div>
                                <table class="print-block  employee-info-table">
                                    <tbody>
                                        <tr>
                                            <td>
                                                <div class="info-flex-item">
                                                    <div class="info-title">
                                                        <b>Emp Nbr:</b>
                                                    </div>
                                                    <div class="info-content">
                                                        000922
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="info-flex-item">
                                                    <div class="info-title">
                                                        <b>Frequency:</b>
                                                    </div>
                                                    <div class="info-content">5</div>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="info-flex-item">
                                                    <div class="info-title">
                                                        <b>Primary Campus:</b>
                                                    </div>
                                                    <div class="info-content">
                                                        001 001 School
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <div class="info-flex-item">
                                                    <div class="info-title">
                                                        <b>Employee Name:</b>
                                                    </div>
                                                    <div class="info-content">
                                                        RONQUILLO, RAYMUNDO R
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="info-flex-item">
                                                    <div class="info-title">
                                                        <b>Pay Campus:</b>
                                                    </div>
                                                    <div class="info-content">
                                                        001 001 School
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="info-flex-item">
                                                    <div class="info-title">
                                                        <b>Check Nbr:</b>
                                                    </div>
                                                    <div class="info-content">
                                                        704617
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="info-flex-item">
                                                    <div class="info-title">
                                                        <b>Withhold Stat:</b>
                                                    </div>
                                                    <div class="info-content">S</div>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="info-flex-item">
                                                    <div class="info-title">
                                                        <b>Exempt:</b>
                                                    </div>
                                                    <div class="info-content">2</div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="info-flex-item">
                                                    <div class="info-title">
                                                        <b> Pay Date:</b>
                                                    </div>
                                                    <div class="info-content">
                                                        08-30-2017
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="info-flex-item">
                                                    <div class="info-title">
                                                        <b>Period Begin:</b>
                                                    </div>
                                                    <div class="info-content">
                                                        08-06-2017
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="info-flex-item">
                                                    <div class="info-title">
                                                        <b>Period End:</b>
                                                    </div>
                                                    <div class="info-content">
                                                        08-19-2017
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <div class="print-block  hr-black"></div>
                                <div class="print-block print-title">
                                    <div
                                        style="padding-left:60px;text-align:left;margin-bottom:0;"
                                    >
                                        RONQUILLO, RAYMUNDO R<br />
                                        73010 ROSEWOOD CRK<br />
                                        Alamo City, TX 47715
                                    </div>
                                    <p
                                        style="text-align:right;padding-right: 20px;margin: 0;"
                                    >
                                        NOTE: YTD amounts reflect the most recent pay
                                        date for the calendar year.
                                    </p>
                                    <div class="print-block hr-black"></div>
                                </div>
                                <form
                                    class="no-print searchForm"
                                    action=""
                                    id="selectPay"
                                >
                                    <div class="form-group in-line">
                                        <label class="form-title">Pay Dates:</label>
                                        <input
                                            class="form-control"
                                            type="text"
                                            name="SearchPayDate"
                                            id="SearchPayDate"
                                            readonly
                                        />
                                    </div>
                                </form>
                                <table
                                    class="no-print no-thead table no-border-table responsive-table max-w-550 earning-title-table"
                                >
                                    <tbody>
                                        <tr>
                                            <td class="td-title">Campus:</td>
                                            <td
                                                class="td-content"
                                                data-title="Campus"
                                                colspan="3"
                                            >
                                                001 001 School
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td-title">Check Number:</td>
                                            <td
                                                class="td-content"
                                                data-title="Check Number:"
                                            >
                                                701233
                                            </td>
                                            <td class="td-title">
                                                Period Ending Date:
                                            </td>
                                            <td
                                                class="td-content"
                                                data-title="Period Ending Date:"
                                            >
                                                11-19-2016
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td-title">
                                                Withholding Status:
                                            </td>
                                            <td
                                                class="td-content"
                                                data-title="Withholding Status:"
                                            >
                                                SINGLE
                                            </td>
                                            <td class="td-title">
                                                Number of Exemptions:
                                            </td>
                                            <td
                                                class="td-content"
                                                data-title="Number of Exemptions:"
                                            >
                                                2
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <div class="hr-black"></div>
                                <div class="clearfix">
                                    <div class="total-table  pull-left">
                                        <p class="no-print table-top-title">
                                            <b>Earnings and Deductions</b>
                                        </p>
                                        <table
                                            class="table border-table no-thead print-table earning-table"
                                        >
                                            <thead>
                                                <tr>
                                                    <th>Earnings & Deductions</th>
                                                    <th>This Period</th>
                                                    <th class="print-td">
                                                        Calendar YTD 2018
                                                    </th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>Standard Gross</td>
                                                    <td>3,057.38</td>
                                                    <td class="print-td"></td>
                                                </tr>
                                                <tr class="print-tr">
                                                    <td>Supplemental Pay:</td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                                <tr class="print-tr">
                                                    <td>Overtime Pay:</td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                                <tr class="print-tr">
                                                    <td>Absence Refund:</td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                                <tr class="print-tr">
                                                    <td>Taxed Fringe Benefits:</td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                                <tr class="print-tr">
                                                    <td>Earned Income Credit:</td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                                <tr class="print-tr">
                                                    <td>Non-TRS Taxable:</td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                                <tr class="print-tr">
                                                    <td>Non-TRS Non-Taxable:</td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                                <tr class="print-tr">
                                                    <td>TRS Supplemental:</td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                                <tr class="total-tr totalEarningTr">
                                                    <td>--- Total Earnings</td>
                                                    <td>
                                                        3,057.38
                                                        <!-- <button class="totalEarningBtn btn btn-primary pull-right no-print xs">
                                                            Detail >
                                                        </button> -->
                                                    </td>
                                                    <td class="print-td"></td>
                                                </tr>
                                                <tr class="print-tr">
                                                    <td>Absence Deductions:</td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td>Withholding Tax</td>
                                                    <td>366.11</td>
                                                    <td class="print-td"></td>
                                                </tr>
                                                <tr class="print-tr">
                                                    <td>FICA Tax:</td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td>Medicare Tax</td>
                                                    <td>42.78</td>
                                                    <td class="print-td"></td>
                                                </tr>
        
                                                <tr>
                                                    <td>TRS Salary Red</td>
                                                    <td>235.42</td>
                                                    <td class="print-td"></td>
                                                </tr>
        
                                                <tr>
                                                    <td>TRS Insurance</td>
                                                    <td>19.87</td>
                                                    <td class="print-td"></td>
                                                </tr>
        
                                                <tr class="totalDeductionsTr">
                                                    <td>Total Other Deductions</td>
                                                    <td>
                                                        249.76
                                                        <!-- <button class="totalDeductionsBtn btn btn-primary pull-right no-print xs">
                                                                Detail >
                                                        </button> -->
                                                    </td>
                                                    <td class="print-td"></td>
                                                </tr>
        
                                                <tr class="total-tr">
                                                    <td>--- Total Deductions</td>
                                                    <td>913.94</td>
                                                    <td class="print-td"></td>
                                                </tr>
                                                <tr class="total-tr">
                                                    <td>--- Net Pay</td>
                                                    <td>2,143.44</td>
                                                    <td class="print-td"></td>
                                                </tr>
                                                <tr class="print-tr">
                                                    <td>Non-TRS Non-pay Taxable:</td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                                <tr class="print-tr">
                                                    <td>
                                                        Non-TRS Non-pay Non-Taxable:
                                                    </td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                                <tr class="print-tr bold-tr">
                                                    <td>Taxable Wages:</td>
                                                    <td>2,714.84</td>
                                                    <td>19,003.88</td>
                                                </tr>
                                                <tr class="print-tr">
                                                    <td>FICA Gross:</td>
                                                    <td>0.00</td>
                                                    <td>0.00</td>
                                                </tr>
                                                <tr class="print-tr">
                                                    <td>Medicare Gross:</td>
                                                    <td>2,950.26</td>
                                                    <td></td>
                                                </tr>
                                                <tr class="print-tr">
                                                    <td>
                                                        Emplr Sponsored Health Covrg:
                                                    </td>
                                                    <td></td>
                                                    <td>1,799.00</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="tips-table pull-left">
                                        <div class="earning-detail">
                                            <table class="table border-table">
                                                <thead>
                                                    <tr>
                                                        <th>Job Description</th>
                                                        <th>Units</th>
                                                        <th>Pay Rate</th>
                                                        <th>This Period</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            1202-HS - ASSISTANT
                                                            PRINCIPAL
                                                        </td>
                                                        <td></td>
                                                        <td>2,918.38</td>
                                                        <td>2,918.38</td>
                                                    </tr>
                                                    <tr class="total-tr">
                                                        <td colspan="3">
                                                            <b>Total Standard Gross:</b>
                                                        </td>
                                                        <td><b>2,918.38</b></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <table class="table border-table no-print no-page">
                                                <thead>
                                                    <tr>
                                                        <th>Job Description</th>
                                                        <th>Units</th>
                                                        <th>Pay Rate</th>
                                                        <th>This Period</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td
                                                            colspan="4"
                                                            style="text-align:center"
                                                        >
                                                            no data
                                                        </td>
                                                    </tr>
                                                    <tr class="total-tr">
                                                        <td colspan="3">
                                                            Total Overtime Pay:
                                                        </td>
                                                        <td>0.00</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <table class="table border-table no-print no-page">
                                                <thead>
                                                    <tr>
                                                        <th>Supplemental Type</th>
                                                        <th>This Period</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td
                                                            colspan="2"
                                                            style="text-align:center"
                                                        >
                                                            no data
                                                        </td>
                                                    </tr>
                                                    <tr class="total-tr">
                                                        <td>Total Supplemental Pay:</td>
                                                        <td>0.00</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <table class="table border-table no-print no-page">
                                                <thead>
                                                    <tr>
                                                        <th>Non-TRS Taxable Type</th>
                                                        <th>This Period</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td
                                                            colspan="2"
                                                            style="text-align:center"
                                                        >
                                                            no data
                                                        </td>
                                                    </tr>
                                                    <tr class="total-tr">
                                                        <td>
                                                            Total Non-TRS Taxable Pay:
                                                        </td>
                                                        <td>0.00</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <table class="table border-table no-print no-page">
                                                <thead>
                                                    <tr>
                                                        <th>
                                                            Non-TRS Non-Taxable Type
                                                        </th>
                                                        <th>This Period</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td
                                                            colspan="2"
                                                            style="text-align:center"
                                                        >
                                                            no data
                                                        </td>
                                                    </tr>
                                                    <tr class="total-tr">
                                                        <td>
                                                            Total Non-TRS Non-Taxable
                                                            Pay:
                                                        </td>
                                                        <td>0.00</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="deduction-table">
                                            <table
                                                class="table border-table earning-left-table"
                                            >
                                                <thead>
                                                    <tr>
                                                        <th>Other Deductions</th>
                                                        <th>Cafe</th>
                                                        <th>This Period</th>
                                                        <th>Employer Contribution</th>
                                                        <th class="print-td">
                                                            YTD 2017
                                                        </th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>032 - ACCIDENT</td>
                                                        <td></td>
                                                        <td>10.28</td>
                                                        <td>0.00</td>
                                                        <td class="print-td">246.72</td>
                                                    </tr>
                                                    <tr>
                                                        <td>029 - AETNA</td>
                                                        <td>Y</td>
                                                        <td>64.50</td>
                                                        <td>177.50</td>
                                                        <td class="print-td">
                                                            1,668.00
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>088 - AFA DISABILITY</td>
                                                        <td></td>
                                                        <td>70.98</td>
                                                        <td>0.00</td>
                                                        <td class="print-td">
                                                            1,703.52
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>009 - AIR MED CARE</td>
                                                        <td></td>
                                                        <td>0.00</td>
                                                        <td>0.00</td>
                                                        <td class="print-td">30.00</td>
                                                    </tr>
                                                    <tr>
                                                        <td>012 - ALLIANCE WORK</td>
                                                        <td></td>
                                                        <td>0.00</td>
                                                        <td>0.89</td>
                                                        <td class="print-td">0.00</td>
                                                    </tr>
                                                    <tr>
                                                        <td>033 - CRITICAL ILLNESS</td>
                                                        <td>Y</td>
                                                        <td>0.00</td>
                                                        <td>0.24</td>
                                                        <td class="print-td">0.00</td>
                                                    </tr>
                                                    <tr>
                                                        <td>016 - DEARBORN</td>
                                                        <td></td>
                                                        <td>0.00</td>
                                                        <td>0.24</td>
                                                        <td class="print-td">0.00</td>
                                                    </tr>
                                                    <tr>
                                                        <td>019 - HUMANA DENTAL</td>
                                                        <td>Y</td>
                                                        <td>11.02</td>
                                                        <td>0.00</td>
                                                        <td class="print-td">176.32</td>
                                                    </tr>
                                                    <tr>
                                                        <td>010 - LEGALSHIELD</td>
                                                        <td></td>
                                                        <td>14.45</td>
                                                        <td>0.00</td>
                                                        <td class="print-td">346.80</td>
                                                    </tr>
                                                    <tr>
                                                        <td>020 - SUPERIOR VISION</td>
                                                        <td>Y</td>
                                                        <td>3.34</td>
                                                        <td>0.00</td>
                                                        <td class="print-td">80.16</td>
                                                    </tr>
                                                    <tr>
                                                        <td>013 - TX LIFE INS.</td>
                                                        <td></td>
                                                        <td>46.93</td>
                                                        <td>0.00</td>
                                                        <td class="print-td">
                                                            1,126.32
                                                        </td>
                                                    </tr>
                                                    <tr class="total-tr">
                                                        <td colspan="2">
                                                            <b
                                                                >Total Other
                                                                Deductions:</b
                                                            >
                                                        </td>
                                                        <td>221.50</td>
                                                        <td>178.63</td>
                                                        <td class="print-td">
                                                            5,572.08
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="print-block hr-black"></div>
                                <table
                                    class="table responsive-table border-table print-table"
                                >
                                    <thead>
                                        <tr>
                                            <th>Leave Type</th>
                                            <th>Units Used This Period</th>
                                            <th>Balance</th>
                                            <th class="print-td">
                                                Units Used Year To Date
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td data-title="Leave Type">
                                                02 - LOCAL SICK
                                            </td>
                                            <td data-title="Units Used This Period">
                                                1.000
                                            </td>
                                            <td data-title="Balance">3.500</td>
                                            <td
                                                class="print-td"
                                                data-title="Units Used Year To Date"
                                            >
                                                1.500
                                            </td>
                                        </tr>
                                        <tr>
                                            <td data-title="Leave Type">
                                                08 - STATE PERSON
                                            </td>
                                            <td data-title="Units Used This Period">
                                                0.000
                                            </td>
                                            <td data-title="Balance">8.000</td>
                                            <td
                                                class="print-td"
                                                data-title="Units Used Year To Date"
                                            >
                                                3.000
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <div class="show-all-screen hr-black"></div>
                                <table
                                    class="table responsive-table payRoll-table print-table"
                                >
                                    <thead>
                                        <tr>
                                            <th>Bank Name</th>
                                            <th>Account Type</th>
                                            <th>Acct Nbr</th>
                                            <th>Dep Amt</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td data-title="Bank Name">
                                                FIRSTTMAIK CREDIT UNION
                                            </td>
                                            <td data-title="Account Type">
                                                2-Checking account
                                            </td>
                                            <td data-title="Acct Nbr">
                                                ***********0735
                                            </td>
                                            <td data-title="Dep Amt">50.00</td>
                                        </tr>
                                        <tr>
                                            <td data-title="Bank Name">
                                                JPMORGAN CHASE BANK.N.A
                                            </td>
                                            <td data-title="Account Type">
                                                2-Checking account
                                            </td>
                                            <td data-title="Acct Nbr">
                                                ***********0000
                                            </td>
                                            <td data-title="Dep Amt">1,974.23</td>
                                        </tr>
                                        <tr class="total-tr">
                                            <td colspan="3" style="text-align:right">
                                                <b>Total:</b>
                                            </td>
                                            <td><b>2,021.23</b></td>
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
        let dateAvailable = ['12/15/2018', '11/28/2018', '11/15/2018']
        $(function() {
            let dateArry = dateAvailable.map(function(item, key, ary) {
                let date = new Date(item)
                item = new Date(date.setHours(12, 0, 0, 0)).valueOf()
                return item
            })
            $('#SearchPayDate')
                .fdatepicker({
                    format: 'mm/dd/yyyy',
                    onRender: function(date) {
                        let a = new Date(date.setHours(12, 0, 0, 0))
                        let newDate = a.valueOf()
                        let value = $.inArray(newDate, dateArry)
                        return value === -1 ? 'disabled' : ''
                    }
                })
                .on('changeDate', function(ev) {
                    console.log(ev)
                })
                .data('datepicker')
            let showEarningDetail = false
            let showDeductionsDetail = false
            $(".totalEarningBtn").click(function(){
                if(!showEarningDetail){
                    $(".earning-detail").show()
                    $(this).html("Close <")
                    showEarningDetail = true
                }else{
                    $(".earning-detail").hide()
                    $(this).html("Detail >")
                    showEarningDetail = false
                }
                
            })
            $(".totalDeductionsBtn").click(function(){
                if(!showDeductionsDetail){
                    $(".deduction-table").show()
                    $(this).html("Close <")
                    showDeductionsDetail = true
                }else{
                    $(".deduction-table").hide()
                    $(this).html("Detail >")
                    showDeductionsDetail = false
                }
            })
        })
    </script>
</html>
