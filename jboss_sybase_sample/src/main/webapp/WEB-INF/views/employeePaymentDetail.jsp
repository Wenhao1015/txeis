<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<html>
<head>
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@ include file="commons/header.jsp"%>
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
    <%@ include file="commons/bar.jsp"%>
   
  
    <main  class="content-wrapper">
        <section class="content">
            <h2 class="clearfix no-print">Employee Information
                  <button class="btn btn-primary pull-right" onclick="doPrint()">Print</button>
            </h2>
            <div class="content-white">
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

                <div class="em-detail">
                    <p class="print-block sub-title">Employee Information</p>
                    <div class="clearfix ">
                            <div class="info-block lg-title">
                                    <div class="info-flex-item left-info">
                                        <div class="info-title"><b>Name</b></div>
                                        <div class="info-content">RAYMUNDO R RONQUILLO</div>
                                    </div>
                                    <div class="info-flex-item">
                                            <div class="info-title"><b></b></div>
                                            <div class="info-content"></div>
                                    </div>
                            </div>
                            <div class="info-block lg-title">
                                    <div class="info-flex-item left-info">
                                        <div class="info-title"><b>Address</b></div>
                                        <div class="info-content">73010 ROSEWOOD CRK</div>
                                    </div>
                                    <div class="info-flex-item">
                                            <div class="info-title"><b>Employee ID</b></div>
                                            <div class="info-content">${employeePaymentDetail.empNbr}</div>
                                        </div>
                            </div>
                            <div class="info-block lg-title">
                                    <div class="info-flex-item left-info">
                                        <div class="info-title"><b>Phone Number</b></div>
                                        <div class="info-content">555-334-9774</div>
                                    </div>
                                    <div class="info-flex-item">
                                            <div class="info-title"><b>Date of Birth</b></div>
                                            <div class="info-content">11-12-1954</div>
                                        </div>
                            </div>
                            <div class="info-block lg-title">
                                    <div class="info-flex-item left-info">
                                        <div class="info-title"><b>Degree</b></div>
                                        <div class="info-content">Master's</div>
                                    </div>
                                    <div class="info-flex-item">
                                            <div class="info-title"><b>Gender</b></div>
                                            <div class="info-content">Female</div>
                                        </div>
                            </div>
                            <div class="info-block lg-title">
                                    <div class="info-flex-item  left-info">
                                        <div class="info-title"><b>Professional Years Experience</b></div>
                                        <div class="info-content">${employeePaymentDetail.yrsExpJob}</div>
                                    </div>
                                    <div class="info-flex-item">
                                            <div class="info-title"><b>Professional District Experience</b></div>
                                            <div class="info-content">02</div>
                                        </div>
                            </div>
                            <div class="info-block lg-title">
                                    <div class="info-flex-item  left-info">
                                        <div class="info-title"><b>Non Professional Experience</b></div>
                                        <div class="info-content">00</div>
                                    </div>
                                    <div class="info-flex-item">
                                            <div class="info-title"><b>Non Professional District Experience</b></div>
                                            <div class="info-content">00</div>
                                        </div>
                            </div>
                        <div class="hr-black"></div>
                        <p class="sub-title">Frequency: Semimonthly</p>
                        <div class="info-block">
                            <div class="info-flex-item">
                                <div class="info-title"><b>Marital Status</b></div>
                                <div class="info-content">S·Single</div>
                            </div>
                            <div class="info-flex-item">
                                    <div class="info-title"><b>Number of Exemotions</b></div>
                                    <div class="info-content">1</div>
                                </div>
                                <div class="info-flex-item">
                                        <div class="info-title"><b>Pay Campus</b></div>
                                        <div class="info-content">${employeePaymentDetail.campusId}</div>
                                    </div>
                        </div>
                        <div class="hr-black"></div>
                        <p  class="sub-title">Positions: </p>
                        <div class="info-block positions">
                            <div class="info-flex-item">
                                <div class="info-title"><b>Title</b></div>
                                <div class="info-content">GS-ASSUSTABT</div>
                            </div>
                            <div class="info-flex-item">
                                <div class="info-title"><b>Annual Payments</b></div>
                                <div class="info-content">${employeePaymentDetail.nbrAnnualPymts}</div>
                            </div>
                            <div class="info-flex-item">
                                <div class="info-title"><b>Regular Hours</b></div>
                                <div class="info-content">0.00</div>
                            </div>
                            <div class="info-flex-item">
                                <div class="info-title"><b>Remain Payments</b></div>
                                <div class="info-content">${employeePaymentDetail.nbrRemainPymts}</div>
                            </div>
                        </div>
                        <div class="info-block positions">
                                <div class="info-flex-item">
                                    <div class="info-title"><b>Annual Salary</b></div>
                                    <div class="info-content">${employeePaymentDetail.contrAmt}</div>
                                </div>
                                <div class="info-flex-item">
                                    <div class="info-title"><b>Daily Rate</b></div>
                                    <div class="info-content">${employeePaymentDetail.contrAmt}</div>
                                </div>
                                <div class="info-flex-item">
                                    <div class="info-title"><b>Pay Rate</b></div>
                                    <div class="info-content">${employeePaymentDetail.contrAmt}</div>
                                </div>
                                <div class="info-flex-item">
                                    <div class="info-title"><b>Overtime Rate</b></div>
                                    <div class="info-content">0.00</div>
                                </div>
                            </div>
                        <div class="hr-black"></div>
                        <div class="print-table">
                            <table class="table">
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
                                        <td>005</td>
                                        <td>FIRSTTMAIK CREDIT UNION</td>
                                        <td>2-Checking account</td>
                                        <td>***********0735</td>
                                        <td>50.00</td>
                                    </tr>
                                    <tr>
                                            <td>031</td>
                                            <td>JPMORGAN CHASE BANK.N.A</td>
                                            <td>2-Checking account</td>
                                            <td>***********0735</td>
                                            <td>0.00</td>
                                        </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- ${employeePaymentDetail.payFreq} -->
            </div>
        </section>
    </main>
  </div>  
    <%@ include file="commons/footer.jsp"%>
        
</body>
<script>
    var myDate = new Date()
    var year = myDate.getFullYear()
    var month = myDate.getMonth() + 1
    var date = myDate.getDate()
    var h = myDate.getHours() 
    var m = myDate.getMinutes() 
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
        window.print();   
    }   
</script>
</html>
