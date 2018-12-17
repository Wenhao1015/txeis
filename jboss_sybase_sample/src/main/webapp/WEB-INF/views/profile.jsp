<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@ include file="commons/header.jsp"%>
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
    <%@ include file="commons/bar.jsp"%>
    <main class="content-wrapper">
        <section class="content">
            <div class="content-white no-title profile">
                <div class="profile-item">
                    <div class="profile-title">
                        <div class="avatar" style="background-image:url('images/user2-160x160.jpg')">
                            <input class="avatar-file" type="file">
                            <label class="avatar-word">Change</label>
                        </div>
                    </div>
                    <div class="profile-desc">
                        <div class="profile-content">
                                <div class="profile-desc-item">
                                        <label class="desc-title">Firstname:</label>
                                        <div class="desc-content">RAYMUNDO</div>
                                </div>
                                <div class="profile-desc-item">
                                        <label class="desc-title">Lastname:</label>
                                        <div class="desc-content">RONQUILLO</div>
                                </div>
                                <div class="profile-desc-item">
                                        <label class="desc-title">Middle:</label>
                                        <div class="desc-content">R</div>
                                </div>
                                <div class="profile-desc-item">
                                        <label class="desc-title">Generation:</label>
                                        <div class="desc-content"></div>
                                </div>
                        </div>
                        <div class="profile-btn">
                            <button class="btn btn-primary">Edit</button>
                        </div>
                        
                    </div>
                </div>
                <p class="sub-title">Marital Status</p>
                <div class="profile-item">
                        <div class="profile-left">
                                <div class="profile-item-line">
                                        <div class="profile-title">
                                                Local
                                        </div>
                                        <div class="profile-desc">
                                                S-single                                                
                                        </div>
                                </div>
                        </div>
                        <div class="profile-btn">
                                <button class="btn btn-primary">Edit</button>
                        </div>
                </div>
                <p class="sub-title">Driver’s License</p>
                <div class="profile-item">
                    <div class="profile-left">
                            <div class="profile-item-line">
                                    <div class="profile-title">
                                        Number
                                    </div>
                                    <div class="profile-desc">
                                           65296623                                                  
                                    </div>
                            </div>
                            <div class="profile-item-line">
                                    <div class="profile-title">
                                        State
                                    </div>
                                    <div class="profile-desc">
                                           TX-TEXAS                                                  
                                    </div>
                            </div>
                    </div>
                    <div class="profile-btn">
                            <button class="btn btn-primary">Edit</button>
                    </div>
                    
                        
                </div>
                <p class="sub-title">Restriction Codes</p>
                <div class="profile-item">
                        <div class="profile-left">
                                <div class="profile-item-line">
                                        <div class="profile-title">
                                            Local
                                        </div>
                                        <div class="profile-desc">
                                             N-No restriction                                                    
                                        </div>
                                </div>
                                <div class="profile-item-line">
                                        <div class="profile-title">
                                            Public
                                        </div>
                                        <div class="profile-desc">
                                                N-No restriction                                                   
                                        </div>
                                </div>
                        </div>
                        <div class="profile-btn">
                                <button class="btn btn-primary">Edit</button>
                        </div>
                        
                </div>
                <p class="sub-title">Email</p>
                <div class="profile-item">
                        <div class="profile-left">
                                <div class="profile-item-line">
                                        <div class="profile-title">
                                            Work Email
                                        </div>
                                        <div class="profile-desc">
                                            raymundo.bell@esc20.net                                           
                                        </div>
                                </div>
                                <div class="profile-item-line">
                                        <div class="profile-title">
                                            Home Email
                                        </div>
                                        <div class="profile-desc">
                                                raymundo.bell@esc20.net                                                   
                                        </div>
                                </div>
                        </div>
                        <div class="profile-btn">
                                <button class="btn btn-primary">Edit</button>
                        </div>
                        
                </div>
                <p class="sub-title">Emergency Contact Information</p>
                <div class="profile-item">
                        <div class="profile-left">
                                <div class="profile-item-line">
                                        <div class="profile-title">
                                        Name
                                        </div>
                                        <div class="profile-desc">
                                          MHY QN                                                       
                                        </div>
                                </div>
                                <div class="profile-item-line">
                                        <div class="profile-title">
                                        Phone Number
                                        </div>
                                        <div class="profile-desc">
                                               (555)401-1978 ext.                                                  
                                        </div>
                                </div>
                                <div class="profile-item-line">
                                        <div class="profile-title">
                                            Relationship
                                        </div>
                                        <div class="profile-desc">
                                                 Son                                                
                                        </div>
                                </div>
                                <div class="profile-item-line">
                                        <div class="profile-title">
                                        Emergency Notes
                                        </div>
                                        <div class="profile-desc">
                                              none                                                   
                                        </div>
                                </div>
                        </div>
                        <div class="profile-btn">
                                <button class="btn btn-primary">Edit</button>
                        </div>
                        
                </div>
                <p class="sub-title">Mailing Address</p>
                <div class="profile-item">
                        <div class="profile-left">
                                <div class="profile-item-line">
                                        <div class="profile-title">
                                            Number
                                        </div>
                                        <div class="profile-desc">
                                             73010                                                    
                                        </div>
                                </div>
                                <div class="profile-item-line">
                                        <div class="profile-title">
                                            Street/P.O.Box
                                        </div>
                                        <div class="profile-desc">
                                               ROSEWOOD CRK                                                  
                                        </div>
                                </div>
                                <div class="profile-item-line">
                                        <div class="profile-title">
                                            Apt
                                        </div>
                                        <div class="profile-desc">
                                                                                                 
                                        </div>
                                </div>
                                <div class="profile-item-line">
                                        <div class="profile-title">
                                            City
                                        </div>
                                        <div class="profile-desc">
                                              Alamo City                                                   
                                        </div>
                                </div>
                                <div class="profile-item-line">
                                        <div class="profile-title">
                                            State
                                        </div>
                                        <div class="profile-desc">
                                             TX-TEXAS                                                    
                                        </div>
                                </div>
                                <div class="profile-item-line">
                                        <div class="profile-title">
                                            Zip
                                        </div>
                                        <div class="profile-desc">
                                            47715                                                     
                                        </div>
                                </div>
                                <div class="profile-item-line">
                                        <div class="profile-title">
                                            Zip+4
                                        </div>
                                        <div class="profile-desc">
                                                                                                 
                                        </div>
                                </div>
                        </div>
                        <div class="profile-btn">
                                <button class="btn btn-primary">Edit</button>
                        </div>
                        
                </div>
                <p class="sub-title">Alternative Address</p>
                <div class="profile-item">
                        <div class="profile-left">
                                <div class="profile-item-line">
                                        <div class="profile-title">
                                            Number
                                        </div>
                                        <div class="profile-desc">
                                             555                                                    
                                        </div>
                                </div>
                                <div class="profile-item-line">
                                        <div class="profile-title">
                                            Street/P.O.Box
                                        </div>
                                        <div class="profile-desc">
                                               MAIN STREET                                              
                                        </div>
                                </div>
                                <div class="profile-item-line">
                                        <div class="profile-title">
                                            Apt
                                        </div>
                                        <div class="profile-desc">
                                                 23                                                
                                        </div>
                                </div>
                                <div class="profile-item-line">
                                        <div class="profile-title">
                                            City
                                        </div>
                                        <div class="profile-desc">
                                              Alamo City                                                   
                                        </div>
                                </div>
                                <div class="profile-item-line">
                                        <div class="profile-title">
                                            State
                                        </div>
                                        <div class="profile-desc">
                                             TX-TEXAS                                                    
                                        </div>
                                </div>
                                <div class="profile-item-line">
                                        <div class="profile-title">
                                            Zip
                                        </div>
                                        <div class="profile-desc">
                                            78254                                                     
                                        </div>
                                </div>
                                <div class="profile-item-line">
                                        <div class="profile-title">
                                            Zip+4
                                        </div>
                                        <div class="profile-desc">
                                                                                                 
                                        </div>
                                </div>
                        </div>
                        <div class="profile-btn">
                                <button class="btn btn-primary">Edit</button>
                        </div>
                        
                </div>
                <p class="sub-title">Phone Numbers</p>
                <div class="profile-item">
                        <div class="profile-left">
                                <div class="profile-item-line">
                                        <div class="profile-title">
                                        Home
                                        </div>
                                        <div class="profile-desc">
                                                (555)344-9775                                                 
                                        </div>
                                </div>
                                <div class="profile-item-line">
                                        <div class="profile-title">
                                            Cell
                                        </div>
                                        <div class="profile-desc">
                                            0                                                     
                                        </div>
                                </div>
                                <div class="profile-item-line">
                                        <div class="profile-title">
                                        Business
                                        </div>
                                        <div class="profile-desc">
                                            0 ext.                                                     
                                        </div>
                                </div>
                        </div>
                        <div class="profile-btn">
                                <button class="btn btn-primary">Edit</button>
                        </div>
                        
                </div>
                <p class="sub-title">W4 Marital Status Information</p>
                <div class="profile-item">
                        <div class="profile-left">
                                <div class="profile-item-line">
                                        <div class="profile-title">
                                                Marital Status
                                        </div>
                                        <div class="profile-desc">
                                              Single                                                   
                                        </div>
                                </div>
                        </div>
                        <div class="profile-btn">
                                <button class="btn btn-primary">Edit</button>
                        </div>
                        
                </div>
                <p class="sub-title">Direct Deposit Bank Accounts</p>
                <div class="profile-item">
                        <div class="profile-left">
                                <div class="profile-item-line">
                                        <div class="profile-title">
                                            Bank Name
                                        </div>
                                        <div class="profile-desc">
                                                FIRSTTMAIK CREDIT UNION                                                     
                                        </div>
                                </div>
                                <div class="profile-item-line">
                                        <div class="profile-title">
                                                Account Type
                                        </div>
                                        <div class="profile-desc">
                                                2-Checking account                                                
                                        </div>
                                </div>
                                <div class="profile-item-line">
                                        <div class="profile-title">
                                                Account Number
                                        </div>
                                        <div class="profile-desc">
                                                ***********0735                                                
                                        </div>
                                </div>
                        </div>
                        <div class="profile-btn">
                                <button class="btn btn-primary">Edit</button>
                        </div>
                        
                </div>

            </div>
        </section>
    </main>
  </div>  
    <%@ include file="commons/footer.jsp"%>
        
</body>
</html>