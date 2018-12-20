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
                        Current Pay Information
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
                        <p class="table-top-title">
                            <b>Employee Information</b>
                        </p>
                        <table
                            class="table border-table responsive-table no-thead print-table"
                        >
                            <tbody>
                                <tr>
                                    <td class="td-title"><b>Name</b></td>
                                    <td
                                        class="td-content"
                                        data-title="Name"
                                        colspan="3"
                                    >
                                        RAYMUNDO R RONQUILLO
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td-title"><b>Address</b></td>
                                    <td class="td-content" data-title="Address">
                                        73010 ROSEWOOD CRK
                                    </td>
                                    <td class="td-title"><b>Employee ID</b></td>
                                    <td
                                        class="td-content"
                                        data-title="Employee ID"
                                    >
                                        000922
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td-title"></td>
                                    <td class="td-content" data-title="">
                                        Alamo City, TX 47715
                                    </td>
                                    <td class="td-title">
                                        <b>Date of Birth</b>
                                    </td>
                                    <td
                                        class="td-content"
                                        data-title="Date of Birth"
                                    >
                                        11-12-1954
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td-title">
                                        <b>Phone Number</b>
                                    </td>
                                    <td
                                        class="td-content"
                                        data-title="Phone Number"
                                    >
                                        555-344-9774
                                    </td>
                                    <td class="td-title"><b>Gender</b></td>
                                    <td class="td-content" data-title="Gender">
                                        Female
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td-title"><b>Degree</b></td>
                                    <td
                                        class="td-content"
                                        data-title="Degree"
                                        colspan="3"
                                    >
                                        Master's
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td-title">
                                        <b>Professional Years Experience</b>
                                    </td>
                                    <td
                                        class="td-content"
                                        data-title="Professional Years Experience"
                                    >
                                        23
                                    </td>
                                    <td class="td-title">
                                        <b>Professional District Experience</b>
                                    </td>
                                    <td
                                        class="td-content"
                                        data-title="Professional District Experience"
                                    >
                                        02
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td-title">
                                        <b>Non Professional Years Experience</b>
                                    </td>
                                    <td
                                        class="td-content"
                                        data-title="Non Professional Years Experience"
                                    >
                                        00
                                    </td>
                                    <td class="td-title">
                                        <b
                                            >Non Professional District
                                            Experience</b
                                        >
                                    </td>
                                    <td
                                        class="td-content"
                                        data-title="Non Professional District Experience"
                                    >
                                        00
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <p class="table-top-title">
                            <b>Frequency: Semimonthly</b>
                        </p>
                        <table
                            class="table border-table responsive-table no-thead print-table"
                        >
                            <tbody>
                                <tr>
                                    <td class="td-title">
                                        <b>Marital Status</b>
                                    </td>
                                    <td
                                        class="td-content"
                                        data-title="Marital Status"
                                    >
                                        S - Single
                                    </td>
                                    <td class="td-title">
                                        <b>Number of Exemptions</b>
                                    </td>
                                    <td
                                        class="td-content"
                                        data-title="Number of Exemptions"
                                    >
                                        1
                                    </td>
                                    <td class="td-title"><b>Pay Campus</b></td>
                                    <td
                                        class="td-content"
                                        data-title="Pay Campus"
                                    >
                                        001
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <p class="table-top-title">
                            <b>Positions:</b>
                        </p>
                        <table class="table border-table responsive-table no-thead print-table">
                            <tbody>
                                <tr>
                                    <td class="td-title">
                                        Title
                                    </td>
                                    <td class="td-content" data-title="Title">
                                        <b>HS - ASSISTANT PRINCIPAL</b>
                                    </td>
                                    <td class="td-title">
                                        Annual Payments
                                    </td>
                                    <td class="td-content" data-title="Annual Payments">24</td>
                                    <td class="td-title">
                                        Regular Hours
                                    </td>
                                    <td class="td-content" data-title="Regular Hours">0.00</td>
                                    <td class="td-title">
                                        Remain Payments
                                    </td>
                                    <td class="td-content" data-title="Remain Payments">7</td>
                                </tr>
                                <tr>
                                    <td class="td-title">
                                        Annual Salary
                                    </td>
                                    <td class="td-content" data-title="Annual Salary">73,377.00</td>
                                    <td class="td-title">Daily Rate</td>
                                    <td class="td-content" data-title="Daily Rate">354.48</td>
                                    <td class="td-title">Pay Rate</td>
                                    <td class="td-content" data-title="Pay Rate">3,057.38</td>
                                    <td class="td-title">
                                        Overtime Rate
                                    </td>
                                    <td class="td-content" data-title="Overtime Rate">0.00</td>
                                </tr>
                            </tbody>
                        </table>
                        <p class="table-top-title">
                            <b>Bank Card Information :</b>
                        </p>
                        <table class="table border-table responsive-table print-table">
                                <thead>
                                    <tr>
                                        <th>Bank Code</th>
                                        <th>Bank Name</th>
                                        <th>Account Type</th>
                                        <th>Acct Nbr</th>
                                        <th>Dep Amt</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td data-title="Bank Code">005</td>
                                        <td data-title="Bank Name">FIRSTTMAIK CREDIT UNION</td>
                                        <td data-title="Account Type">2-Checking account</td>
                                        <td data-title="Acct Nbr">***********0735</td>
                                        <td data-title="Dep Amt">50.00</td>
                                    </tr>
                                    <tr>    
                                        <td data-title="Bank Code">031</td>
                                        <td data-title="Bank Name">JPMORGAN CHASE BANK.N.A</td>
                                        <td data-title="Account Type">2-Checking account</td>
                                        <td data-title="Acct Nbr">***********0000</td>
                                        <td data-title="Dep Amt">1,974.23</td>
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
