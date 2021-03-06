package com.esc20.controller;

import com.esc20.model.AppUserEntity;
import com.esc20.model.BhrEmpJob;
import com.esc20.model.LeaveRequests;
import com.esc20.nonDBModels.Events;
import com.esc20.nonDBModels.LeaveRequestModel;
import com.esc20.service.IndexService;
import com.fasterxml.jackson.databind.ObjectMapper;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.shiro.session.Session;
import org.apache.shiro.web.session.HttpServletSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

@Controller
@RequestMapping("/leaveRequest")
public class LeaveRequestController {

    @Autowired
    private IndexService indexService;

    @RequestMapping(value="", method=RequestMethod.GET)
    public ModelAndView getIndexPage(ModelAndView mav){
        mav.setViewName("index");
        return mav;
    }
    
    @ResponseBody
    @RequestMapping(value = "/getLeaveDetailById", method = RequestMethod.POST)
    public String getLeaveDetailById( @PathVariable String Id) {
    	LeaveRequests request = this.indexService.getleaveRequestById(Integer.parseInt(Id));
    	LeaveRequestModel requestModel = new LeaveRequestModel(request);
        return requestModel.toJSON().toString();
    }

    @RequestMapping("eventCalendar")
    public ModelAndView getEventCalendar(HttpServletRequest req){
        HttpSession session = req.getSession();
        String user = (String)session.getAttribute("user");
        ModelAndView mav = new ModelAndView();
        if(null == user){
        	return this.getIndexPage(mav);
        }
        
        LeaveRequests request = new LeaveRequests();
        List<LeaveRequests> requests = this.indexService.getLeaveRequests(request);
        List<LeaveRequestModel> requestModels = new ArrayList<LeaveRequestModel>();
        LeaveRequestModel model;
        JSONArray json = new JSONArray();
        for(int i=0;i<requests.size();i++) {
        	model = new LeaveRequestModel(requests.get(i));
        	requestModels.add(model);
        }
        for(int i=0;i<requestModels.size();i++) {
        	json.add(requestModels.get(i).toJSON());
        }
        mav.setViewName("/leaveRequest/fullCalendar");
        mav.addObject("leaves", json); 
        return mav;
    }
    
    @RequestMapping("leaveRequest")
    public ModelAndView leaveRequest(HttpServletRequest req, String SearchType, String SearchStart, String SearchEnd) throws ParseException{
        HttpSession session = req.getSession();
        String user = (String)session.getAttribute("user");
        ModelAndView mav = new ModelAndView();
        if(null == user){
        	return this.getIndexPage(mav);
        }
        SimpleDateFormat sdf1 = new SimpleDateFormat("MM/dd/yyyy");
        mav.setViewName("/leaveRequest/leaveRequest");
        LeaveRequests request = new LeaveRequests();
        request.setLeaveType(SearchType);
        if(SearchStart!=null&&!("").equals(SearchStart))
        	request.setLeaveStartDate(sdf1.parse(SearchStart));
        if(SearchEnd!=null&&!("").equals(SearchEnd))
        	request.setLeaveEndDate(sdf1.parse(SearchEnd));
        List<LeaveRequests> requests = this.indexService.getLeaveRequests(request);
        List<LeaveRequestModel> requestModels = new ArrayList<LeaveRequestModel>();
        LeaveRequestModel model;
        for(int i=0;i<requests.size();i++) {
        	model = new LeaveRequestModel(requests.get(i));
        	requestModels.add(model);
        }
        mav.addObject("leaves", requestModels);
        
        mav.addObject("SearchType", SearchType);
        mav.addObject("SearchStart", SearchStart);
        mav.addObject("SearchEnd", SearchEnd);
        return mav;
    }
    
    @RequestMapping("submitLeaveRequest")
    public ModelAndView submitLeaveRequest(HttpServletRequest req, String leaveId, String leaveType, String absenseReason, String LeaveStartDate, String startTimeValue,
			String LeaveEndDate, String endTimeValue, String Remarks) throws ParseException{
        HttpSession session = req.getSession();
        String user = (String)session.getAttribute("user");
        ModelAndView mav = new ModelAndView();
        if(null == user){
        	return this.getIndexPage(mav);
        }
        this.saveLeaveRequest(leaveId, leaveType, absenseReason, LeaveStartDate, startTimeValue, LeaveEndDate, endTimeValue, Remarks);   
        return this.leaveRequest(req,null,null,null);
    }

    
    @RequestMapping("submitLeaveRequestFromCalendar")
    public ModelAndView submitLeaveRequestFromCalendar(HttpServletRequest req, String leaveId, String leaveType, String absenseReason, String LeaveStartDate, String startTimeValue,
			String LeaveEndDate, String endTimeValue, String Remarks) throws ParseException{
        HttpSession session = req.getSession();
        String user = (String)session.getAttribute("user");
        ModelAndView mav = new ModelAndView();
        if(null == user){
        	return this.getIndexPage(mav);
        }
        this.saveLeaveRequest(leaveId, leaveType, absenseReason, LeaveStartDate, startTimeValue, LeaveEndDate, endTimeValue, Remarks);   
        return this.getEventCalendar(req);
    }
    
	private void saveLeaveRequest(String leaveId, String leaveType, String absenseReason, String LeaveStartDate, String startTimeValue,
			String LeaveEndDate, String endTimeValue, String Remarks) throws ParseException {
		LeaveRequests request;
		if(leaveId==null||("").equals(leaveId))
        	request = new LeaveRequests();
        else
        	request = this.indexService.getleaveRequestById(Integer.parseInt(leaveId+""));
        SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy hh:mm a",Locale.ENGLISH);
        request.setLeaveType(leaveType);
        request.setAbsenseReason(absenseReason);
        request.setLeaveStartDate(formatter.parse(LeaveStartDate + " "+ startTimeValue));
        request.setLeaveEndDate(formatter.parse(LeaveEndDate + " " + endTimeValue));
        request.setRemarks(Remarks);
        request.setCreatedAt(new Date());
        request.setCreatedBy("admin");
        request.setUpdatedAt(new Date());
        request.setUpdatedBy("admin");
        request.setStatus("0");
        request.setLeaveDuration();
        this.indexService.saveLeaveRequest(request, (leaveId!=null&&!("").equals(leaveId)));
	}

    @RequestMapping("deleteLeaveRequest")
    public ModelAndView deleteLeaveRequest(HttpServletRequest req, String id) throws ParseException{
        HttpSession session = req.getSession();
        String user = (String)session.getAttribute("user");
        ModelAndView mav = new ModelAndView();
        if(null == user){
        	return this.getIndexPage(mav);
        }
        deleteLeaveRequest(id);   
        return this.leaveRequest(req,null,null,null);
    }

    @RequestMapping("deleteLeaveRequestFromCalendar")
    public ModelAndView deleteLeaveRequestFromCalendar(HttpServletRequest req, String id){
        HttpSession session = req.getSession();
        String user = (String)session.getAttribute("user");
        ModelAndView mav = new ModelAndView();
        if(null == user){
        	return this.getIndexPage(mav);
        }
        deleteLeaveRequest(id);   
        return this.getEventCalendar(req);
    }

	private void deleteLeaveRequest(String id) {
		LeaveRequests request = new LeaveRequests();
        request.setId(Integer.parseInt(id));
        this.indexService.DeleteLeaveRequest(request);
	}
}
