<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<html lang="en">
<head>
		<title>TxEIS : Employee Access -  Earning</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@ include file="../commons/header.jsp"%>
</head>
<body class="hold-transition sidebar-mini">
		<div class="wrapper">
				<%@ include file="../commons/bar.jsp"%>
			 
			
				<main class="content-wrapper" id="content">
						<section class="content">
							<h2 class="clearfix no-print section-title">Earnings
									<button class="btn btn-primary pull-right" onclick="doPrint()">Print</button>
							</h2>
							<div class="content-white EMP-detail earning-content">
									<div class="print-block print-title">
											<div style="text-align:center;margin-bottom:10px;">
												Texas ISD<br />Earnings
												<div id="date-now"></div>
											</div>
									</div>
									<table class="employee-info-table">
										<tbody>
											<tr>
												<td>
													<div class="info-flex-item">
														<div class="info-title"><b>Emp Nbr:</b></div>
														<div class="info-content">000922</div>
													</div>
												</td>
												<td>
														<div class="info-flex-item">
																<div class="info-title"><b>Frequency:</b></div>
																<div class="info-content">5</div>
															</div>
												</td>
												<td>
														<div class="info-flex-item">
																<div class="info-title"><b>Primary Campus:</b></div>
																<div class="info-content">001 001 School</div>
															</div>
												</td>
											</tr>
											<tr>
													<td colspan="2">
															<div class="info-flex-item">
																	<div class="info-title"><b>Employee Name:</b></div>
																	<div class="info-content">RONQUILLO, RAYMUNDO R</div>
																</div>
													</td>
													<td>
															<div class="info-flex-item">
																	<div class="info-title"><b>Pay Campus:</b></div>
																	<div class="info-content">001 001 School</div>
																</div>
													</td>
												</tr>
												<tr>
													<td>
														<div class="info-flex-item">
																<div class="info-title"><b>Check Nbr:</b></div>
																<div class="info-content">704617</div>
															</div>
												</td>
												<td>
														<div class="info-flex-item">
																<div class="info-title"><b>Withhold Stat:</b></div>
																<div class="info-content">S</div>
															</div>
												</td>
														<td>
																<div class="info-flex-item">
																		<div class="info-title"><b>Exempt:</b></div>
																		<div class="info-content">2</div>
																	</div>
														</td>
													</tr>
													<tr>
														<td>
															<div class="info-flex-item">
																	<div class="info-title"><b>	
																		Pay Date:</b></div>
																	<div class="info-content">08-30-2017
		
																	</div>
																</div>
													</td>
													<td>
															<div class="info-flex-item">
																	<div class="info-title"><b>Period Begin:</b></div>
																	<div class="info-content">08-06-2017</div>
																</div>
													</td>
													<td>
															<div class="info-flex-item">
																	<div class="info-title"><b>Period End:</b></div>
																	<div class="info-content">08-19-2017
		
																	</div>
																</div>
													</td>
														</tr>
										</tbody>
									</table>
									<div class="hr-black"></div>
									<div class="print-block print-title">
										<br>
										<div style="padding-left:60px;text-align:left;margin-bottom:10px;">
											RONQUILLO, RAYMUNDO R<br />	
											73010 ROSEWOOD CRK<br />	
											Alamo City, TX  47715
										</div>
										<p style="text-align:right;padding-right: 20px;">	
												NOTE:  YTD amounts reflect the most recent pay date for the calendar year.</p>
												<div class="hr-black"></div>
									</div>
									<div class="clearfix">
										<div class="total-table  pull-left">
											<table class="table earning-left-table">
													<thead>
														<tr>
																<th>Earnings&Deductions</th>
																<th>This Period</th>
																<th>Calendar YTD 2017</th>
														</tr>
													</thead>
													<tbody>
														<tr class="have-tips-table">
															<td>
																<b>Standard Gross:</b>
															</td>
															<td>
																2,918.38
																
															</td>
															<td>7,1430.58</td>
															
														</tr>
														<tr>
															<td>
																<b>Supplemental Pay:</b>
															</td>
															<td>0.00</td>
															<td></td>
														</tr>
														<tr>
																<td>
																	<b>Overtime Pay:</b>
																</td>
																<td>0.00</td>
																<td></td>
															</tr>
															<tr>
																	<td>
																		<b>Absence Refund:</b>
																	</td>
																	<td>0.00</td>
																	<td></td>
																</tr>
																<tr>
																		<td>
																			<b>Taxed Fringe Benefits:</b>
																		</td>
																		<td>0.00</td>
																		<td>0.00</td>
																	</tr>
																	<tr>
																			<td>
																				<b>Earned Income Credit:</b>
																			</td>
																			<td>0.00</td>
																			<td>0.00</td>
																		</tr>
																		<tr>
																				<td>
																					<b>Non-TRS Taxable:</b>
																				</td>
																				<td>0.00</td>
																				<td>0.00</td>
																			</tr>
																			<tr>
																					<td>
																						<b>Non-TRS Non-Taxable:</b>
																					</td>
																					<td>0.00</td>
																					<td>0.00</td>
																				</tr>
																				<tr>
																						<td>
																							<b>TRS Supplemental:</b>
																						</td>
																						<td>0.00</td>
																						<td>0.00</td>
																					</tr>
																<tr class="total-tr">
																	<td><b>--Total Earnings:</b></td>
																	<td><b>2,918.38</b></td>
																	<td><b>71,568.08</b></td>
																</tr>
																<tr>
																	<td><b>Absence Deductions:</b></td>
																	<td>0.00</td>
																	<td></td>
																</tr>
																<tr>
																		<td><b>Withholding Tax:</b></td>
																		<td>387.80</td>
																		<td>9,605.70</td>
																	</tr>
																	<tr>
																			<td><b>FICA Tax:</b></td>
																			<td>0.00</td>
																			<td>0.00</td>
																		</tr>
																		<tr>
																				<td><b>Medicare Tax:</b></td>
																				<td>41.17</td>
																				<td>1,006.99</td>
																			</tr>
																			<tr>
																					<td><b>TRS Salary Red:</b></td>
																					<td>224.72</td>
																					<td>5,500.15</td>
																				</tr>
																				<tr>
																						<td><b>TRS Insurance:</b></td>
																						<td>18.96</td>
																						<td>464.27</td>
																					</tr>
																					<tr>
																							<td><b>Total Other Deductions:</b></td>
																							<td>221.20</td>
																							<td>5,572.08</td>
																						</tr>
																						<tr class="total-tr">
																								<td><b>--Total Earnings:</b></td>
																								<td><b>894.15</b></td>
																								<td><b>22,149.19</b></td>
																						</tr>
														<tr class="total-tr">
																								<td><b>--Net Pay:</b></td>
																								<td><b>2,024.23</b></td>
																								<td><b></b></td>
														</tr>
														<tr>
															<td><b>	
																	Non-TRS Non-pay Taxable:</b></td>
															<td>0.00</td>
															<td>0.00</td>
														</tr>
														<tr class="earning-line">
																<td colspan="3"><div class="star-line">***********************************************************</div></td>
														</tr>
														<tr>
																<td><b>Taxable Wages:</b></td>
																<td>2,614.80</td>
																<td>63,949.21</td>
														</tr>
														<tr>
																<td><b>FICA Gross:</b></td>
																<td>0.00</td>
																<td>0.00</td>
														</tr>
														<tr>
																<td><b>Medicare Gross:</b></td>
																<td>2,839.52</td>
																<td>69,449.36</td>
														</tr>
														<tr>
																<td><b>Emplr Sponsored Health Covrg:</b></td>
																<td></td>
																<td>5,928.00</td>
														</tr>
														<tr class="earning-line">
																<td colspan="3"><div class="star-line">***********************************************************</div></td>
														</tr>
													</tbody>
											</table>
										</div>
										<div class="tips-table pull-left">
													<table class="table earning-left-table">
														<thead>
															<tr>
																<th>Job Code</th>
																<th>Units</th>
																<th>Pay Rate</th>
																<th>This Period</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td><b>1202-HS - ASSISTANT PRINCIPAL</b></td>
																<td></td>
																<td>2,918.38</td>
																<td>2,918.38</td>
															</tr>
															<tr class="total-tr">
																<td colspan="3"><b>Total Standard Gross:</b></td>
																<td><b>2,918.38</b></td>
															</tr>
														</tbody>
													</table>
													<br>
													<table class="table earning-left-table deduction-table">
															<thead>
																<tr>
																	<th>Other Deductions</th>
																	<th>Cafe</th>
																	<th>This Period</th>
																	<th>Emplr Contrib</th>
																	<th>YTD 2017</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td><b>032 - ACCIDENT</b></td>
																	<td></td>
																	<td>10.28</td>
																	<td>0.00</td>
																	<td>246.72</td>
																</tr>
																<tr>
																		<td><b>029 - AETNA</b></td>
																		<td>Y</td>
																		<td>64.50</td>
																		<td>177.50</td>
																		<td>1,668.00</td>
																</tr>
																<tr>
																		<td><b>088 - AFA DISABILITY</b></td>
																		<td></td>
																		<td>70.98</td>
																		<td>0.00</td>
																		<td>1,703.52</td>
																</tr>
																<tr>
																		<td><b>009 - AIR MED CARE</b></td>
																		<td></td>
																		<td>0.00</td>
																		<td>0.00</td>
																		<td>30.00</td>
																</tr>
																<tr>
																		<td><b>012 - ALLIANCE WORK</b></td>
																		<td></td>
																		<td>0.00</td>
																		<td>0.89</td>
																		<td>0.00</td>
																</tr>
																<tr>
																		<td><b>033 - CRITICAL ILLNESS</b></td>
																		<td>Y</td>
																		<td>0.00</td>
																		<td>0.24</td>
																		<td>0.00</td>
																</tr>
																<tr>
																		<td><b>016 - DEARBORN</b></td>
																		<td></td>
																		<td>0.00</td>
																		<td>0.24</td>
																		<td>0.00</td>
																</tr>
																<tr>
																		<td><b>019 - HUMANA DENTAL</b></td>
																		<td>Y</td>
																		<td>11.02</td>
																		<td>0.00</td>
																		<td>176.32</td>
																</tr>
																<tr>
																		<td><b>010 - LEGALSHIELD</b></td>
																		<td></td>
																		<td>14.45</td>
																		<td>0.00</td>
																		<td>346.80</td>
																</tr>
																<tr>
																		<td><b>020 - SUPERIOR VISION</b></td>
																		<td>Y</td>
																		<td>3.34</td>
																		<td>0.00</td>
																		<td>80.16</td>
																</tr>
																<tr>
																		<td><b>013 - TX LIFE INS.</b></td>
																		<td></td>
																		<td>46.93</td>
																		<td>0.00</td>
																		<td>1,126.32</td>
																</tr>
																<tr class="total-tr">
																	<td colspan="2"><b>Total Other Deductions:</b></td>
																	<td><b>221.50</b></td>
																	<td><b>178.63</b></td>
																	<td><b>5,572.08</b></td>
																</tr>
															</tbody>
														</table>
										</div>
									</div>
									
									<div class="hr-black print-none"></div>
									<div class="">
											<table class="table responsive-table payRoll-table print-table">
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
														<td data-title="Bank Name">FIRSTTMAIK CREDIT UNION</td>
														<td data-title="Account Type">2-Checking account</td>
														<td data-title="Acct Nbr">***********0735</td>
														<td data-title="Dep Amt">50.00</td>
													</tr>
													<tr>
															<td data-title="Bank Name">JPMORGAN CHASE BANK.N.A</td>
															<td data-title="Account Type">2-Checking account</td>
															<td data-title="Acct Nbr">***********0000</td>
															<td data-title="Dep Amt">1,974.23</td>
													</tr>
													<tr class="total-tr">
														<td colspan="3" style="text-align:right" ><b>Total:</b></td>
														<td><b>2,021.23</b></td>
													</tr>
												</tbody>
											</table>
									</div>
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
					window.print();   
				}   
			</script>
		</html>