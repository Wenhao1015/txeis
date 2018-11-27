package com.shinetech.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.shinetech.model.AppUserEntity;
import com.shinetech.model.LeaveRequests;
import com.shinetech.service.IndexService;
import org.apache.shiro.session.Session;
import org.apache.shiro.web.session.HttpServletSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/")
public class IndexController {

    @Autowired
    private IndexService indexService;

    @RequestMapping(value="", method=RequestMethod.GET)
    public ModelAndView getIndexPage(ModelAndView mav){
        mav.setViewName("index");
        return mav;
    }

    @RequestMapping(value = "login", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, String> login(@RequestBody Map<String, String> param, HttpServletRequest req){
        Map<String, String> res = new HashMap<>();
        res.put("isSuccess","false");
        if(param != null){
            String uName = param.get("userName");
            AppUserEntity user = this.indexService.getUserPwd(uName);
            if(user.getuPwd().equals(param.get("userPwd"))){
                res.put("isSuccess","true");
                res.put("userName", uName);
                HttpSession session = req.getSession();
                session.setAttribute("user", uName);
            }
        }
        return res;
    }
    @RequestMapping("home")
    public ModelAndView getHome(HttpServletRequest req){
        HttpSession session = req.getSession();
        String user = (String)session.getAttribute("user");
        ModelAndView mav = new ModelAndView();
        if(null == user){
        	return this.getIndexPage(mav);
        }
        
        mav.setViewName("home");
        mav.addObject("user", user);
        
        return mav;
    }
    
    @RequestMapping("eventCalendar")
    public ModelAndView getEventCalendar(HttpServletRequest req){
        HttpSession session = req.getSession();
        String user = (String)session.getAttribute("user");
        ModelAndView mav = new ModelAndView();
        if(null == user){
        	return this.getIndexPage(mav);
        }
        
        mav.setViewName("fullCalendar");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        mav.addObject("today", sdf.format(new Date()));    
        return mav;
    }
    
    @RequestMapping("leaveRequest")
    public ModelAndView leaveRequest(HttpServletRequest req, String SearchType, Date SearchStart, Date SearchEnd){
        HttpSession session = req.getSession();
        String user = (String)session.getAttribute("user");
        ModelAndView mav = new ModelAndView();
        if(null == user){
        	return this.getIndexPage(mav);
        }
        
        mav.setViewName("leaveRequest");
        LeaveRequests request = new LeaveRequests();
        request.setLeaveType(SearchType);
        request.setLeaveStartDate(SearchStart);
        request.setLeaveEndDate(SearchEnd);
        List<LeaveRequests> requests = this.indexService.getLeaveRequests(request);
        mav.addObject("leaves", requests);   
        mav.addObject("SearchType", SearchType);  
        mav.addObject("SearchStart", SearchStart);  
        mav.addObject("SearchEnd", SearchEnd);  
        return mav;
    }
    
    @RequestMapping("submitLeaveRequest")
    public ModelAndView submitLeaveRequest(HttpServletRequest req, String id, String leaveType, Date LeaveStartDate, String LeaveStartDateType, Date LeaveEndDate,
    		String LeaveEndDateType, String Remarks){
        HttpSession session = req.getSession();
        String user = (String)session.getAttribute("user");
        ModelAndView mav = new ModelAndView();
        if(null == user){
        	return this.getIndexPage(mav);
        }
        LeaveRequests request;
        if(id!=null)
        	request = new LeaveRequests();
        else
        	request = this.indexService.getleaveRequestById(Integer.parseInt(id));
        request.setLeaveType(leaveType);
        request.setLeaveStartDate(LeaveStartDate);
        request.setLeaveStartDateType(Integer.parseInt(LeaveStartDateType));
        request.setLeaveEndDate(LeaveEndDate);
        request.setLeaveEndDateType(Integer.parseInt(LeaveEndDateType));
        request.setRemarks(Remarks);
        request.setCreatedAt(new Date());
        request.setCreatedBy("admin");
        request.setUpdatedAt(new Date());
        request.setUpdatedBy("admin");
        request.setStatus("0");
        request.setLeaveDuration();
        this.indexService.saveLeaveRequest(request);   
        return this.leaveRequest(req,null,null,null);
    }

    @RequestMapping("deleteLeaveRequest")
    public ModelAndView deleteLeaveRequest(HttpServletRequest req, int id){
        HttpSession session = req.getSession();
        String user = (String)session.getAttribute("user");
        ModelAndView mav = new ModelAndView();
        if(null == user){
        	return this.getIndexPage(mav);
        }
        LeaveRequests request = new LeaveRequests();
        request.setId(id);
        this.indexService.DeleteLeaveRequest(request);   
        return this.leaveRequest(req,null,null,null);
    }
    
    @RequestMapping("logout")
    public ModelAndView logout(HttpServletRequest req, String Id){
        HttpSession session = req.getSession();
        session.invalidate();
        ModelAndView mav = new ModelAndView();
        return this.getIndexPage(mav);
    }
}
