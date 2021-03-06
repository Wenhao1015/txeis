<!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-light clearfix">
  	
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#"><i class="fa fa-bars"></i></a>
      </li>
    </ul>

    
    <c:if test="${sessionScope.companyId == 0}">
        <a class="nav-logo" href="/">
          <img src="/<%=request.getContextPath().split("/")[1]%>/images/logo.png" alt="esc logo">
        </a>
    </c:if>
    <c:if test="${sessionScope.companyId == 1}">
        <a class="nav-logo" href="/">
          <img src="/<%=request.getContextPath().split("/")[1]%>/images/logo-austin.png" alt="austin school logo">
        </a>
    </c:if>
    <c:if test="${sessionScope.companyId == 2}">
        <a class="nav-logo" href="/">
          <img src="/<%=request.getContextPath().split("/")[1]%>/images/logo-saisd.png" alt="sanantonio logo">
        </a>
    </c:if>
    
    <!-- Right navbar links -->
    <ul class="navbar-nav nav-right">
      <!-- Notifications Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="/">
          <i class="fa fa-bell-o"></i>
          <span class="navbar-badge">15</span>
        </a>
        <div class="dropdown-menu dropdown-menu-right note-dropdown">
          <span class="dropdown-item dropdown-header">15 Notifications</span>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fa fa-envelope mr-2"></i> 4 new messages
            <span class="pull-right text-minor">3 mins</span>
          </a>
          <div class="dropdown-divider"></div>          
          <a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/<%=request.getContextPath().split("/")[1]%>/profile">
          <i class="fa fa-user"></i>
        </a>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->
  
  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary">
  
    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
       		<a href="/<%=request.getContextPath().split("/")[1]%>/profile" class="d-block">
          		<img src="/<%=request.getContextPath().split("/")[1]%>/images/user2-160x160.jpg" class="img-circle" alt="User Image">
        	</a>
        </div>
        <div class="info">
          <a href="/<%=request.getContextPath().split("/")[1]%>/profile" class="d-block">RAYMUNDO</a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <!-- menu-open -->
          <li class="nav-item has-treeview" id="inquiry">
            <a href="#" class="nav-link"><!--  active -->
              <i class="nav-icon fa fa-list"></i>
              <p>
                Inquiry
                <i class="right fa fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="/<%=request.getContextPath().split("/")[1]%>/inquiry/calendarYearToDate" class="nav-link" id="calendarYearToDate">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Calendar Year to Date</p>
                </a>
              </li>
              <li class="nav-item" >
                <a href="/<%=request.getContextPath().split("/")[1]%>/inquiry/calendarPayInformation" class="nav-link" id="calendarPayInformation">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Current Pay Information</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/<%=request.getContextPath().split("/")[1]%>/inquiry/deductions" class="nav-link" id="deductions">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Deductions</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/<%=request.getContextPath().split("/")[1]%>/inquiry/earnings" class="nav-link" id="earnings">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Earnings</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/<%=request.getContextPath().split("/")[1]%>/inquiry/w2Information" class="nav-link" id="w2Information">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>W-2 Information</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/<%=request.getContextPath().split("/")[1]%>/inquiry/information1095" class="nav-link" id="information1095">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>1095 Information</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item has-treeview" id="selfService">
            <a href="#" class="nav-link">
              <i class="nav-icon fa fa-address-book-o"></i>
              <p>
                Self-Service
                <i class="right fa fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="/<%=request.getContextPath().split("/")[1]%>/selfService/changePassword" class="nav-link" id="changePassword">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Change Password</p>
                </a>
              </li>
              <!-- <li class="nav-item">
                <a href="/" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Demographic Information</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Payroll Information</p>
                </a>
              </li> -->
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fa fa-hourglass-start text-info"></i>
              <p>Leave Balances</p>
            </a>
          </li>
          <li class="nav-item">
            <a id="leaveRequest" href="/<%=request.getContextPath().split("/")[1]%>/leaveRequest/leaveRequest" class="nav-link">
              <i class="nav-icon fa  fa-pencil-square-o text-info"></i>
              <p>Leave Requests</p>
            </a>
          </li>
          <!-- <li class="nav-item">
            <a href="/<%=request.getContextPath().split("/")[1]%>/leaveRequest/eventCalendar" class="nav-link">
              <i class="nav-icon fa  fa-pencil-square-o text-info"></i>
              <p>Calendar</p>
            </a>
          </li>  -->
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link"> <!--  active -->
              <i class="nav-icon fa fa-users"></i>
              <p>
                Supervisor
                <i class="right fa fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="/" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Approve Leave Requests</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Leave Overview</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Calendar</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/" class="nav-link">
                  <i class="fa fa-circle-o nav-icon"></i>
                  <p>Set Temporary Approvers</p>
                </a>
              </li>
              
            </ul>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
    <ul class="sidebar-btm">
        <li><a href="/<%=request.getContextPath().split("/")[1]%>/profile" title="My Account"><i class="fa fa-user"></i></a></li>
        <!-- <li><a href="/" title="Full Screen"><i class="fa fa-arrows-alt"></i></a></li> -->
        <li><a href="/" title="Help"><i class="fa fa-question-circle"></i></a></li>
        <li><a href="/<%=request.getContextPath().split("/")[1]%>/logout" title="Logout"><i class="fa fa-sign-out "></i></a></li>
    </ul>
    <script>
    $(document).ready(function() {
        var path = (window.location+"").split("/");
        var menuItem = path[path.length-2];
        var item = path[path.length -1];
        console.log(path)
        console.log(menuItem)
        console.log(item)
        var menuElement = $("#"+menuItem);
        var itemElement = $("#"+item);
        console.log(itemElement)
        if(menuElement){
            menuElement.addClass("menu-open");
            menuElement.children("ul").attr("style","display: block;");
        }
        if(itemElement)
        	itemElement.addClass("active");
    });
    </script>
  </aside>