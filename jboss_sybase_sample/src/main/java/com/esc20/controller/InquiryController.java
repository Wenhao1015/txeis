package com.esc20.controller;

import com.esc20.model.AppUserEntity;
import com.esc20.model.BhrEmpJob;
import com.esc20.model.Events;
import com.esc20.model.LeaveRequests;
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
import java.util.Map;

@Controller
@RequestMapping("/inquiry")
public class InquiryController {

    @Autowired
    private IndexService indexService;

    @RequestMapping(value="", method=RequestMethod.GET)
    public ModelAndView getIndexPage(ModelAndView mav){
        mav.setViewName("index");
        return mav;
    }
    
    @RequestMapping("calendarYearToDate")
    public ModelAndView getCalendarYearToDate(HttpServletRequest req){
        HttpSession session = req.getSession();
        String user = (String)session.getAttribute("user");
        ModelAndView mav = new ModelAndView();
        if(null == user){
        	return this.getIndexPage(mav);
        }
        mav.setViewName("/inquiry/calendarYearToDate");
        return mav;
    }

    @RequestMapping("calendarPayInformation")
    public ModelAndView getCalendarPayInformation(HttpServletRequest req){
        HttpSession session = req.getSession();
        String user = (String)session.getAttribute("user");
        ModelAndView mav = new ModelAndView();
        if(null == user){
        	return this.getIndexPage(mav);
        }
        mav.setViewName("/inquiry/calendarPayInformation");
        return mav;
    }

    @RequestMapping("deductions")
    public ModelAndView getDeductions(HttpServletRequest req){
        HttpSession session = req.getSession();
        String user = (String)session.getAttribute("user");
        ModelAndView mav = new ModelAndView();
        if(null == user){
        	return this.getIndexPage(mav);
        }
        mav.setViewName("/inquiry/deductions");
        return mav;
    }

    @RequestMapping("earnings")
    public ModelAndView getEarnings(HttpServletRequest req){
        HttpSession session = req.getSession();
        String user = (String)session.getAttribute("user");
        ModelAndView mav = new ModelAndView();
        if(null == user){
        	return this.getIndexPage(mav);
        }
        mav.setViewName("/inquiry/earnings");
        return mav;
    }

    @RequestMapping("w2Information")
    public ModelAndView getW2Information(HttpServletRequest req){
        HttpSession session = req.getSession();
        String user = (String)session.getAttribute("user");
        ModelAndView mav = new ModelAndView();
        if(null == user){
        	return this.getIndexPage(mav);
        }
        mav.setViewName("/inquiry/w2Information");
        return mav;
    }

    @RequestMapping("information1095")
    public ModelAndView getInformation1095(HttpServletRequest req){
        HttpSession session = req.getSession();
        String user = (String)session.getAttribute("user");
        ModelAndView mav = new ModelAndView();
        if(null == user){
        	return this.getIndexPage(mav);
        }
        mav.setViewName("/inquiry/information1095");
        return mav;
    }
}
