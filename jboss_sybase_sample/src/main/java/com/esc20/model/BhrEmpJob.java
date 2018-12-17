package com.esc20.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.math.BigDecimal;

@Entity
@Table(name = "BHR_EMP_JOB", schema = "txeis")
public class BhrEmpJob implements Serializable {

    private static final long serialVersionUID = 6715142900654758429L;

    @Id
    @Column(name = "CYR_NYR_FLG")
    private String cyrNyrflg;
    
    @Id
    @Column(name = "PAY_FREQ")
    private String payFreq;
    
    @Id
    @Column(name = "EMP_NBR")
    private String empNbr;
    
    @Id
    @Column(name = "JOB_CD")
    private String jobCd;

    @Column(name = "PRIM_JOB")
    private String primJob;
    
    @Column(name = "PCT_ASSGND")
    private BigDecimal pctAssgnd;
    
    @Column(name = "CAMPUS_ID")
    private String campusId;
    
    @Column(name = "DEPT")
    private String dept;
    
    @Column(name = "EEOC")
    private String eeoc;
    
    @Column(name = "CONTR_AMT")
    private BigDecimal contrAmt;
    
    @Column(name = "CONTR_REMAIN_AMT")
    private BigDecimal contrRemainAmt;
    
    @Column(name = "CAL_CD")
    private String calCd;
    
    @Column(name = "CONTR_DT_BEGIN")
    private String contrDtBegin;
    
    @Column(name = "CONTR_DT_END")
    private String contrDtEnd;
    
    @Column(name = "CONTR_NON_STD_FLG")
    private String contrNonStdFlag;
    
    @Column(name = "CONTR_DAYS")
    private BigDecimal contrDays;
    
    @Column(name = "ST_STEP")
    private String stStep;
    
    @Column(name = "ST_MIN_SALARY")
    private BigDecimal stMinSalary;
    
    @Column(name = "YRS_CAR_LAD")
    private BigDecimal yrsCarLed;
    
    @Column(name = "PAY_TYPE")
    private String payType;
    
    @Column(name = "PAY_RATE")
    private BigDecimal payRate;
    
    @Column(name = "PAY_GRD")
    private String payGrd;
    
    @Column(name = "PAY_SCHED")
    private String paySched;
 
    @Column(name = "PAY_STEP")
    private String payStep;
 
    @Column(name = "MAX_DAYS")
    private String maxDays;
 
    @Column(name = "EXEMPT_STAT")
    private String exemptStat;
 
    @Column(name = "DLY_RATE_OF_PAY")
    private BigDecimal dlyRateodPay;
 
    @Column(name = "REG_HRS_WRK")
    private BigDecimal regHrsWrk;
 
    @Column(name = "HRS_PER_DAY")
    private BigDecimal hrsPerDay;
    
    @Column(name = "NBR_DAYS_EMPLD")
    private BigDecimal nbrDaysEmpld;
 
    @Column(name = "NBR_DAYS_OFF")
    private BigDecimal nbrDaysOff;
 
    @Column(name = "NBR_ANNUAL_PYMTS")
    private BigDecimal nbrAnnualPymts;
 
    @Column(name = "NBR_REMAIN_PYMTS")
    private BigDecimal nbrRemainPymts;
 
    @Column(name = "NBR_MON_CONTR")
    private BigDecimal nbrMonContr;
 
    @Column(name = "OVTM_ELIG_FLG")
    private String ovtmEligFlg;
 
    @Column(name = "OVTM_RATE")
    private BigDecimal ovtmRate;
 
    @Column(name = "WRK_COMP")
    private String wrkComp;
 
    @Column(name = "WRK_COMP_REMAIN")
    private BigDecimal wrkCompRemain;
 
    @Column(name = "TRS_POS_CD")
    private String trsPosCd;
 
    @Column(name = "ST_MIN_SALARY_PCT")
    private BigDecimal stMinSalaryPct;
 
    @Column(name = "ACCRU_JOB")
    private String accruJob;
 
    @Column(name = "ACCRU_RATE")
    private BigDecimal accruRate;
 
    @Column(name = "CONTR_DAYS_LOC")
    private String contrDaysLoc;
 
    @Column(name = "DT_PAYOFF")
    private String dtPayoff;
 
    @Column(name = "YRS_EXP_JOB")
    private String yrsExpJob;
 
    @Column(name = "ACCRU_CD")
    private String accruCd;
 
    
    @Column(name = "WRK_COMP_ANNL_PYMTS")
    private BigDecimal wrkCompAnnlPymts;
 
    @Column(name = "HRLY_RATE")
    private BigDecimal hrlyDate;
 
    @Column(name = "INCR_PAY_STP")
    private String incrPayStp;
 
    @Column(name = "MODULE")
    private String module;
 
    @Column(name = "VACANT_POS")
    private String vacantPos;
 
    @Column(name = "WKLY_HRS_SCHED")
    private BigDecimal wklyHrsSched;
 
    @Column(name = "WHOLLY_SEP_AMT")
    private BigDecimal whollySepAmt;

	public String getCyrNyrflg() {
		return cyrNyrflg;
	}

	public void setCyrNyrflg(String cyrNyrflg) {
		this.cyrNyrflg = cyrNyrflg;
	}

	public String getPayFreq() {
		return payFreq;
	}

	public void setPayFreq(String payFreq) {
		this.payFreq = payFreq;
	}

	public String getEmpNbr() {
		return empNbr;
	}

	public void setEmpNbr(String empNbr) {
		this.empNbr = empNbr;
	}

	public String getJobCd() {
		return jobCd;
	}

	public void setJobCd(String jobCd) {
		this.jobCd = jobCd;
	}

	public String getPrimJob() {
		return primJob;
	}

	public void setPrimJob(String primJob) {
		this.primJob = primJob;
	}

	public BigDecimal getPctAssgnd() {
		return pctAssgnd;
	}

	public void setPctAssgnd(BigDecimal pctAssgnd) {
		this.pctAssgnd = pctAssgnd;
	}

	public String getCampusId() {
		return campusId;
	}

	public void setCampusId(String campusId) {
		this.campusId = campusId;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	public String getEeoc() {
		return eeoc;
	}

	public void setEeoc(String eeoc) {
		this.eeoc = eeoc;
	}

	public BigDecimal getContrAmt() {
		return contrAmt;
	}

	public void setContrAmt(BigDecimal contrAmt) {
		this.contrAmt = contrAmt;
	}

	public BigDecimal getContrRemainAmt() {
		return contrRemainAmt;
	}

	public void setContrRemainAmt(BigDecimal contrRemainAmt) {
		this.contrRemainAmt = contrRemainAmt;
	}

	public String getCalCd() {
		return calCd;
	}

	public void setCalCd(String calCd) {
		this.calCd = calCd;
	}

	public String getContrDtBegin() {
		return contrDtBegin;
	}

	public void setContrDtBegin(String contrDtBegin) {
		this.contrDtBegin = contrDtBegin;
	}

	public String getContrDtEnd() {
		return contrDtEnd;
	}

	public void setContrDtEnd(String contrDtEnd) {
		this.contrDtEnd = contrDtEnd;
	}

	public String getContrNonStdFlag() {
		return contrNonStdFlag;
	}

	public void setContrNonStdFlag(String contrNonStdFlag) {
		this.contrNonStdFlag = contrNonStdFlag;
	}

	public BigDecimal getContrDays() {
		return contrDays;
	}

	public void setContrDays(BigDecimal contrDays) {
		this.contrDays = contrDays;
	}

	public String getStStep() {
		return stStep;
	}

	public void setStStep(String stStep) {
		this.stStep = stStep;
	}

	public BigDecimal getStMinSalary() {
		return stMinSalary;
	}

	public void setStMinSalary(BigDecimal stMinSalary) {
		this.stMinSalary = stMinSalary;
	}

	public BigDecimal getYrsCarLed() {
		return yrsCarLed;
	}

	public void setYrsCarLed(BigDecimal yrsCarLed) {
		this.yrsCarLed = yrsCarLed;
	}

	public String getPayType() {
		return payType;
	}

	public void setPayType(String payType) {
		this.payType = payType;
	}

	public BigDecimal getPayRate() {
		return payRate;
	}

	public void setPayRate(BigDecimal payRate) {
		this.payRate = payRate;
	}

	public String getPayGrd() {
		return payGrd;
	}

	public void setPayGrd(String payGrd) {
		this.payGrd = payGrd;
	}

	public String getPaySched() {
		return paySched;
	}

	public void setPaySched(String paySched) {
		this.paySched = paySched;
	}

	public String getPayStep() {
		return payStep;
	}

	public void setPayStep(String payStep) {
		this.payStep = payStep;
	}

	public String getMaxDays() {
		return maxDays;
	}

	public void setMaxDays(String maxDays) {
		this.maxDays = maxDays;
	}

	public String getExemptStat() {
		return exemptStat;
	}

	public void setExemptStat(String exemptStat) {
		this.exemptStat = exemptStat;
	}

	public BigDecimal getDlyRateodPay() {
		return dlyRateodPay;
	}

	public void setDlyRateodPay(BigDecimal dlyRateodPay) {
		this.dlyRateodPay = dlyRateodPay;
	}

	public BigDecimal getRegHrsWrk() {
		return regHrsWrk;
	}

	public void setRegHrsWrk(BigDecimal regHrsWrk) {
		this.regHrsWrk = regHrsWrk;
	}

	public BigDecimal getHrsPerDay() {
		return hrsPerDay;
	}

	public void setHrsPerDay(BigDecimal hrsPerDay) {
		this.hrsPerDay = hrsPerDay;
	}

	public BigDecimal getNbrDaysEmpld() {
		return nbrDaysEmpld;
	}

	public void setNbrDaysEmpld(BigDecimal nbrDaysEmpld) {
		this.nbrDaysEmpld = nbrDaysEmpld;
	}

	public BigDecimal getNbrDaysOff() {
		return nbrDaysOff;
	}

	public void setNbrDaysOff(BigDecimal nbrDaysOff) {
		this.nbrDaysOff = nbrDaysOff;
	}

	public BigDecimal getNbrAnnualPymts() {
		return nbrAnnualPymts;
	}

	public void setNbrAnnualPymts(BigDecimal nbrAnnualPymts) {
		this.nbrAnnualPymts = nbrAnnualPymts;
	}

	public BigDecimal getNbrRemainPymts() {
		return nbrRemainPymts;
	}

	public void setNbrRemainPymts(BigDecimal nbrRemainPymts) {
		this.nbrRemainPymts = nbrRemainPymts;
	}

	public BigDecimal getNbrMonContr() {
		return nbrMonContr;
	}

	public void setNbrMonContr(BigDecimal nbrMonContr) {
		this.nbrMonContr = nbrMonContr;
	}

	public String getOvtmEligFlg() {
		return ovtmEligFlg;
	}

	public void setOvtmEligFlg(String ovtmEligFlg) {
		this.ovtmEligFlg = ovtmEligFlg;
	}

	public BigDecimal getOvtmRate() {
		return ovtmRate;
	}

	public void setOvtmRate(BigDecimal ovtmRate) {
		this.ovtmRate = ovtmRate;
	}

	public String getWrkComp() {
		return wrkComp;
	}

	public void setWrkComp(String wrkComp) {
		this.wrkComp = wrkComp;
	}

	public BigDecimal getWrkCompRemain() {
		return wrkCompRemain;
	}

	public void setWrkCompRemain(BigDecimal wrkCompRemain) {
		this.wrkCompRemain = wrkCompRemain;
	}

	public String getTrsPosCd() {
		return trsPosCd;
	}

	public void setTrsPosCd(String trsPosCd) {
		this.trsPosCd = trsPosCd;
	}

	public BigDecimal getStMinSalaryPct() {
		return stMinSalaryPct;
	}

	public void setStMinSalaryPct(BigDecimal stMinSalaryPct) {
		this.stMinSalaryPct = stMinSalaryPct;
	}

	public String getAccruJob() {
		return accruJob;
	}

	public void setAccruJob(String accruJob) {
		this.accruJob = accruJob;
	}

	public BigDecimal getAccruRate() {
		return accruRate;
	}

	public void setAccruRate(BigDecimal accruRate) {
		this.accruRate = accruRate;
	}

	public String getContrDaysLoc() {
		return contrDaysLoc;
	}

	public void setContrDaysLoc(String contrDaysLoc) {
		this.contrDaysLoc = contrDaysLoc;
	}

	public String getDtPayoff() {
		return dtPayoff;
	}

	public void setDtPayoff(String dtPayoff) {
		this.dtPayoff = dtPayoff;
	}

	public String getYrsExpJob() {
		return yrsExpJob;
	}

	public void setYrsExpJob(String yrsExpJob) {
		this.yrsExpJob = yrsExpJob;
	}

	public String getAccruCd() {
		return accruCd;
	}

	public void setAccruCd(String accruCd) {
		this.accruCd = accruCd;
	}

	public BigDecimal getWrkCompAnnlPymts() {
		return wrkCompAnnlPymts;
	}

	public void setWrkCompAnnlPymts(BigDecimal wrkCompAnnlPymts) {
		this.wrkCompAnnlPymts = wrkCompAnnlPymts;
	}

	public BigDecimal getHrlyDate() {
		return hrlyDate;
	}

	public void setHrlyDate(BigDecimal hrlyDate) {
		this.hrlyDate = hrlyDate;
	}

	public String getIncrPayStp() {
		return incrPayStp;
	}

	public void setIncrPayStp(String incrPayStp) {
		this.incrPayStp = incrPayStp;
	}

	public String getModule() {
		return module;
	}

	public void setModule(String module) {
		this.module = module;
	}

	public String getVacantPos() {
		return vacantPos;
	}

	public void setVacantPos(String vacantPos) {
		this.vacantPos = vacantPos;
	}

	public BigDecimal getWklyHrsSched() {
		return wklyHrsSched;
	}

	public void setWklyHrsSched(BigDecimal wklyHrsSched) {
		this.wklyHrsSched = wklyHrsSched;
	}

	public BigDecimal getWhollySepAmt() {
		return whollySepAmt;
	}

	public void setWhollySepAmt(BigDecimal whollySepAmt) {
		this.whollySepAmt = whollySepAmt;
	}

}
