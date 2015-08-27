package com.verizon.pcs.webservice;

public class ProCoderSurveyWebservice{
	

		long strtTm = System.currentTimeMillis();
		Response response = null;
		logger.debug("IssueTrackerWebservice :: getJITDashBoardHeader begins: "+ strtTm);
		logger.debug("IssueTrackerWebservice :: request : "+ request);
		StatusInfoTpye requeststatus = new StatusInfoTpye();
		String result = "";
		trackerUtil = new IssueTrackerUtil();
		String Vzid = "";
		JITDashBoardResponse dashBoardResp  =new JITDashBoardResponse();
		if (request != null && !request.isEmpty()) {
			try {
				issueTrackerService = new IssueTrackerServiceImpl();				
				JITDashBoardRequest dashBoardRequest = trackerUtil.readDashBoardReq(request);
				
				Vzid = dashBoardRequest.getVzid();
				if(dashBoardRequest!=null){
				if (Vzid!= null && Vzid!="" && Vzid.length()==7) {
				 dashBoardResp = issueTrackerService.getJITDashBoardHeader(Vzid);
				 if(dashBoardResp.getStatusInfo().getStatusCode()==0){
					requeststatus.setStatusCode(0);
					requeststatus.setStatusDesc("Request processed Successfully");
				 }
				 else
				 {
					requeststatus.setStatusCode(1001);
					requeststatus.setStatusDesc("Error in processing the request");
				 }
				 
				} else {
					requeststatus.setStatusCode(1);
					requeststatus.setStatusDesc("Not a Proper Request,Please enter a valid vzid ");
				}
				}
				else{
					requeststatus.setStatusCode(1);
					requeststatus.setStatusDesc("Invalid request format");
				}

			} catch (Exception e) {

				requeststatus.setStatusCode(1);
				requeststatus.setStatusDesc("Error Occured:Cannot process the request");
				exceptionLogService.insertCXMException(e, Vzid, AuditConstants.MODULE_NAME, AuditConstants.SUB_MODULE_ISSUETRACKER);
				logger.error("Exception occurred " + e);			   
			}

		} else {

			requeststatus.setStatusCode(1);
			requeststatus.setStatusDesc("Not a Proper Request  , Please Check and Resubmit the Request for JITDashBoardHeader ");
		}
		
		dashBoardResp.setStatusInfo(requeststatus);

		long endTm = System.currentTimeMillis();

		logger.debug("IssueTrackerWebservice :: getJITDashBoardHeader ends:"
				+ ((endTm - strtTm) / 1000) + " Secs");

		Long responseTime = ((endTm - strtTm) / 1000);

		auditCreateService.insertCXMAudit(Vzid,
				"/jobIssue/getJITDashBoardHeader", AuditConstants.MODULE_NAME,
				AuditConstants.SUB_MODULE_ISSUE, responseTime.toString(),
				"Request For JITDashBoardHeader");
		response = Response
				.ok(dashBoardResp)
				.header("Access-Control-Allow-Origin", "*")
				.header("Access-Control-Allow-Methods",
						"POST, GET, PUT, UPDATE, OPTIONS")
				.header("Access-Control-Allow-Headers",
						"Content-Type, Accept, X-Requested-With").build();

		return response;

	
}
