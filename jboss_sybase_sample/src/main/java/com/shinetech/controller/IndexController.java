package com.shinetech.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.shinetech.model.AppUserEntity;
import com.shinetech.model.BhrEmpJob;
import com.shinetech.model.Events;
import com.shinetech.model.LeaveRequests;
import com.shinetech.service.IndexService;

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
                session.setAttribute("companyId", user.getCompanyID());
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
 
    @RequestMapping("profile")
    public ModelAndView getProfile(HttpServletRequest req){
        HttpSession session = req.getSession();
        String user = (String)session.getAttribute("user");
        ModelAndView mav = new ModelAndView();
        if(null == user){
        	return this.getIndexPage(mav);
        }
        
        mav.setViewName("profile");
        mav.addObject("user", user);
        
        return mav;
    }
    
    @RequestMapping("logout")
    public ModelAndView logout(HttpServletRequest req, String Id){
        HttpSession session = req.getSession();
        session.invalidate();
        ModelAndView mav = new ModelAndView();
        return this.getIndexPage(mav);
    }
}
