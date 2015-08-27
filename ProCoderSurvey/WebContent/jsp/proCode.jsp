<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9" />
<meta name="viewport" content="target-densitydpi=device-dpi; width=device-width; initial-scale = 1.0; maximum-scale=1.0; user-scalable=no" />

<title>CoA CXM</title>
<link href="../css/jquery-ui.css" rel="stylesheet" type="text/css" />
<link href="../css/base.css" rel="stylesheet" type="text/css" />

<!--[if IE]>
<link href="../css/base-ie.css" rel="stylesheet" type="text/css" />
<link href="../css/inputs-ie.css" rel="stylesheet" type="text/css" />
<link href="../css/combo-box-ie.css" rel="stylesheet" type="text/css" />
<link href="../css/proprietary-ie.css" rel="stylesheet" type="text/css" />
<![endif]-->
<!--[if IE 7]>
<link href="css/table-ie7.css" rel="stylesheet" type="text/css" />
<![endif]-->

<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/jquery-ui.js"></script>
<script type="text/javascript" src="../js/jquery.tmpl.js"></script>
<script type="text/javascript" src="../js/iscroll.js"></script>
<script type="text/javascript" src="../js/login.js"></script>
<script type="text/javascript" src="../js/files-download.js"></script>
<script type="text/javascript" src="../js/loader.js"></script>
<script type="text/javascript" src="../js/secondary.js"></script>
<script type="text/javascript" src="../js/menu.js"></script>
<script type="text/javascript" src="../js/accordion.js"></script>
<script type="text/javascript" src="../js/combo-box.js"></script>
<script type="text/javascript" src="../js/popup.js"></script>
<script type="text/javascript" src="../js/expcol.js"></script>
<script type="text/javascript" src="../js/fullpage.js"></script>
<script type="text/javascript" src="../js/buttons.js"></script>
<script type="text/javascript" src="../js/skiplogin.js"></script>
<script type="text/javascript" src="../js/dynamic.js"></script>
<script type="text/javascript" src="../js/functions.js"></script>
<script type="text/javascript" src="../js/application_2v.js"></script>

<script type="text/javascript" src="../js/application.js"></script>

<script type="text/javascript" src="../js/jquery.fastLiveFilter.js"></script>
   
<script type="text/javascript" src="../js/d3.js"></script>
<script type="text/javascript"  src="../js/d3.tooltip.js"></script>
<script type="text/javascript" src="../js/bar_chart.js"></script>
<script type="text/javascript" src="../js/bar_chart_horz.js"></script>
<!--[if IE]>
<script type="text/javascript" src="../js/checkbox-ie.js"></script> 
<script type="text/javascript" src="../js/ie.js"></script>

<![endif]-->
<style>
#vexp_col{
  background: none repeat scroll 0 0 black;
  height: 38px;
}

#vexp_col img{
margin-left:10px;
margin-top: 3px;
border-right: 1px solid red;
display:block;
float:left;
}
#vexp_col span.vbuild-bar
{
    color: red;
    float: left;
    font-size: 16px;
    font-weight: bold;
    padding-left: 39px;
    padding-top: 9px;
    text-align: center;
}
#vexp_col span.vbuild-bar span{color:#fff;}
#vexp_col span.empName{
 color: lightBlue;
    float: right;
    font-size: 14px;
    font-weight: bold;
    margin-right: 18px;
    padding-top: 9px;
    }

</style>

</head>

<body>

<!-- ### Start Wrapper ### -->
<div id="layout" class="wrapper"> 
  
  <!-- ### Start Layout ### -->
  <div class="layout"> 
    
    <!-- ### Start Primary Navigation ### -->
 
    <!-- ### End Primary Navigation ### --> 
     <!--[if IE]>
 <div id="vexp_col">  
 <img src="../images/verizon-logo.gif"/>
    
          <span class="vbuild-bar"> <span>v</span>Build - Job Assignment</span>
          <span class="empName"></span>
    
 </div>    
  <![endif]--> 
<!--Start Expand/Collapse-->
 <div id="exp_col">  
    <div id="exp_col_bar">
        <a href="javascript:;" class="back-btn"><span>Back</span></a>
        <span id="exp_title">Site Survey</span>
    </div>
 </div>
<!--End-->

    <!-- ### Start Primary Content ### -->
    <div class="content-primary">
      <div class="shadow-top"></div>
      <!-- Start Dashboard Panel -->
      <!-- End Dashboard Panel -->
      
      <!-- Start Jobs Panel -->
      <div class="content"> 
        <!-- ### Start Secondary Navigation ### -->
        <div class="two-column"> 
            <!-- ### Start Left Side ### -->
            <div class="left">
            <div class="shadow-right"></div>
                <div class="left-panel">
                	<%@ include file="proCodeLeft.jsp" %>
                </div>
            </div>
            <!-- ### End Left Side ### --> 
          
            <!-- ### Start Right Side ### -->
            <div class="right">
            <div class="content-secondary"> 
<!-- ### Start Job List ### -->
                <div class="content" id="survey-his-page">
               	
                <div class="content-area">
                <div id="scrollScroll111" class="scrollbar"> 
                    <div class="iscroll padT15" id="all_survey">
                    	<div class="divTable oddeven cellpad15 overlayTrigger">
					<div class="row">
						<div align="left" class="cell first">
							Customer Name <span class="mandatory">*</span>
						</div>
						<div class="cell last cust-name bold" align="right">
							<input name="cust-name" id="cust-name"  maxlength="200" type="text"
								class="wid209 cust-name" />
						</div>
						</div>
					</div>
                    </div>
                </div>
                </div>
                 
                </div>
                <!-- ### End Job List ### -->
				<!-- ### Start Job List ### -->
                <div class="content" id="new-survey-page">     	
                
                <div class="content-area">
                <div id="scrollScroll1" class="scrollbar"> 
                    <div class="iscroll padT15" id="create_new">
                    
                        
                        
                    </div>
                </div>
                </div>
                
                <!-- ### Start Context Menu ### -->
                <div class="context-menu">
                <div class="context-menu-wrap" align="right">
                    <a href="javascript:void(0);" onClick="submitSurvey();" class="btn-context submit-survey">
                      <span class="btn-L"></span><span class="btn-M">Submit</span><span class="btn-R"></span>
                    </a>
                        
                	  
                </div>
                </div>
                <!-- ### End Context Menu ### --> 
                
                </div>
               
            </div>
            </div>
            <!-- ### End Right Side ### --> 
        </div>
        <!-- ### End Secondary Navigation ### --> 
      </div>
      <!-- End Jobs Panel -->
      
      
    </div>
    <!-- ### End Primary Content ### --> 
   
  </div>
  <!-- ### End Layout ### --> 
  
</div>
<!-- ### End Wrapper ### -->
<%@ include file="pop-localmanager.jsp" %>
<%@ include file="ewo-asigndate.jsp" %>
<%@ include file="pop-change-tech-status.jsp" %>
<%@ include file="pop-change-loan-to-productive.jsp" %>
<%@ include file="tech-tpl.jsp" %>
<%@ include file="ewos-tpl.jsp" %>
<%-- <%@ include file="ewolist.jsp" %> --%>
<%@ include file="pop-change-to-productive.jsp" %>
<%@ include file="pop-filterby.jsp" %>
<%@ include file="pop-filterby-job.jsp" %>
<%@ include file="pop-filterby-print.jsp" %>
<%@ include file="pop-filterby-act.jsp" %>
<%@ include file="pop-filterby-acttype.jsp" %>
<%@ include file="pop-filterby-actstat.jsp" %>
<%@ include file="pop-filterby-assign.jsp" %>
<%@ include file="pop-filterby-epm.jsp" %>
<%@ include file="pop-sortby.jsp" %>
<%@ include file="pop-sortby-tech.jsp" %>
<%@ include file="summary-charts.jsp" %>
<%@ include file="act-summary-tpl.jsp" %>
<div id="Connection_fail" class="hide">Connection to server failed. Please try again</div>
<div id="alert_nodata" class="hide">No Valid Data , Please check the Values given</div>
<script>
init_select();
</script>
</body>
<div id="tech-sucess" class="hide">Tech Status is updated Successfully</div>
<div id="job-sucess" class="hide">Job Assigned Successfully</div>
<div id="act-sucess" class="hide">Activities Assigned Successfully</div>
<div id="job-removed" class="hide">Job removed Successfully</div>
<div id="Connection_fail" class="hide">Connection Failed.Please try again</div>
<div id="not_authorised" class="hide">Please create Work profile to assign jobs</div>
<div id="no_techniciandetails" class="hide">Sorry, You dont have any TECHS reporting to you</div>
<div id="alert_oneewo" class="hide">Please select one EWO at a time</div>
<div id="already-assigned" class="hide">Selected EWO already Assigned to the Technician</div>
<div id="already-assigned-act" class="hide">Selected Activity already Assigned to the Technician</div>
<div id="fail-assigned-act" class="hide">Failed to assign one or more activities to the technician</div>
<div id="act-removed" class="hide">Activity removed successfully</div>
<div id="act-removed-fail" class="hide">Failed to Un-Assign one or more activities</div>
<div id="ViewSummary_fail" class="hide">No job summary available</div>
<div id="no-act-assigned" class="hide">No specific activities assigned for selected job. Try unassigning the EWO</div>
<div id="act-not-found" class="hide">Error in fetching the activities. Please try again</div>
<div id="errrMsg-loadtech" class="hide"></div>
<div id="sortlistTechonly" class="hide">
    <ul class="option-list" id="sortlistTechulonly">
      <li>
      	<input type="radio" id="techs0" name="rad" value='A-Z <span class="up-down-arw">&uarr;</span>' checked/>
        <label for="techs0">A-Z <span class='up-down-arw'>&uarr;</span> (Default)</label>
      </li>
     <li>
      	<input type="radio" id="techs1" name="rad" value='Z-A <span class="up-down-arw">&darr;</span>'/>
        <label for="techs1">Z-A <span class='up-down-arw'>&darr;</span></label>
      </li>
    </ul>
</div>
</html>
