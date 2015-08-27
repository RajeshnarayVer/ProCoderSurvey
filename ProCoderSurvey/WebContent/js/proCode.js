/**
 * 
 */

var title='';
var json={}; 
$(function() {

	//getEWOlist('ewos');
	//getJSON('techs'); 
	
	/*job-list selection script*/
	$('.list-button li').click(function() {
		$('.list-button li').removeClass('selected');
		$(this).addClass('selected');
	});
	
	$('#list-ewos li').click(function() {
		title=$(this).html();
		$('#exp_title').html(title);
 	});
	
	
	$('.scrollbar').initiscroll();
	
	skiplogin();
	oddeven();	
});

function skiplogin()
{
	$('.startup').hide();
	$('#layout').show()
}
function oddeven() {
	$('.divTable .cell:first-child').addClass('first');
	$('.divTable .cell:last-child').addClass('last');
	$('.oddeven .row:nth-child(odd)').addClass('odd');
	$('.oddeven .row:nth-child(even)').addClass('even');
}

function switchTab(obj) {
	 $('#menu-primary li:eq('+ obj +')').click();
}

function submitSurvey(){
	
	var fileList = $('#fileList').text().split(';');
	fileListReq = "";
	$(fileList).each(function(f){
		fileListReq +="<fileName>"+f+"<fileName>";
	});
	
	var req="<createSurveyReq><name>" + $('#cust-name').val()
	+ "</name>" + "<address>" + $('#cust-add').val()
	+ "</address>" + "<room>" + $('#room').val()
	+ "</room><type>" + $('#type').val()
	+ "</type>" + "<by>" + $('#by').val()
	+ "</by>" + "<date>" + $('#date').val()
	+ "</date>" + "<remarks>" + $('#rem').val() + "</remarks>"
	+ "<attachList>" + fileListReq + "</attachList>"
	+ "</createSurveyReq>";
		
    //alert(ewosumreq);
	//var viewUrl = "http://vbscqtd5.ebiz.verizon.com:7001/Vbuild-CXM/rest/jobassignment/getJobSummary";
	var viewUrl = "/createSurvey";
	$.ajax({
		type : 'POST',
		url : viewUrl,
		//crossDomain: true,
		data: req ,
		dataType:'text',

		beforeSend: function(){
			loadLoader();	
	    },
	    complete: function(){
		},
		success : function(result){},
		error : function(msg) {
			
			openPopup({
				width:'400px',
				height:'auto',
				title:'Alert',
				contentID:'Connection_fail',
				btn1Title:'Cancel',
				btn1Style:'btn-silver',
				btn1callback:'closePopup()',		
				btn2Title:'Try Again',
				btn2Style:'btn-dark-red',
				btn2callback:'closePopup()' 
			});
		}
	});
}
