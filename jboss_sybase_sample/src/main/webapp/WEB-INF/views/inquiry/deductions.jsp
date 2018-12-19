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
                            Deductions
                    </h2>
                    <div class="content-white EMP-detail">
                            <p class="no-print table-top-title"><b>Frequency: Semimonthly</b></p>
                            <div>
                                    Marital Status:  S - Single<br>
                                    Number of Exemptions: 1<br>
                            </div>
                        <table class="table border-table responsive-table print-table">
                                <thead>
                                    <tr>
                                        <th>Deduction Code</th>
                                        <th>Description</th>
                                        <th>Amount</th>
                                        <th>Cafeteria Flag</th>
                                        <th>Employer Contribution Amount</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td data-title="Deduction Code">001</td>
                                        <td data-title="Description">ADD-WITHHOLDING</td>
                                        <td data-title="Amount">10.00</td>
                                        <td data-title="Cafeteria Flag">N</td>
                                        <td data-title="Employer Contribution Amount">0.00</td>
                                    </tr>
                                    <tr>
                                            <td data-title="Deduction Code">001</td>
                                            <td data-title="Description">ADD-WITHHOLDING</td>
                                            <td data-title="Amount">10.00</td>
                                            <td data-title="Cafeteria Flag">N</td>
                                            <td data-title="Employer Contribution Amount">0.00</td>
                                        </tr>
                                        <tr>
                                                <td data-title="Deduction Code">001</td>
                                                <td data-title="Description">ADD-WITHHOLDING</td>
                                                <td data-title="Amount">10.00</td>
                                                <td data-title="Cafeteria Flag">N</td>
                                                <td data-title="Employer Contribution Amount">0.00</td>
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
