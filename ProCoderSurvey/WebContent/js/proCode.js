/**
 * 
 */


var surveyData = '';
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

$(document).ready(function(){
	$('.content-secondary > div').css('display','none');
	$('.content-secondary #survey-his-page').css('display','block');
	$('#survey-list').css('display','block');
	$('#survey-detail').css('display','none');
	
	getSurveyDetails();
	
	$(document.body).on('click','.surveyLink',function(){
		$('#survey-list').css('display','none');
		$('#survey-detail').css('display','block');
		var surveyId = $(this).attr('id');
		var surveyDetail = $(surveyData).find('survey').find('surveyId').filter(function(){return $.trim($(this).text()) == surveyId;}).parent('survey');
		console.log(surveyDetail);
		$('.cust-name').text($(surveyDetail).find('name').text());
		$('.cust-add').text($(surveyDetail).find('address').text());
		$('.room').text($(surveyDetail).find('room').text());
		$('.type').text($(surveyDetail).find('type').text());
		$('.by').text($(surveyDetail).find('by').text());
		$('.date').text($(surveyDetail).find('data').text());
		$('.rem').text($(surveyDetail).find('remarks').text());
		$('.fileList').text($(surveyDetail).find('files').text());
	});
	
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

function getSurveyDetails(){
	var req = "";
	var viewUrl = "../xml/surveyList.xml";
	$.ajax({
		type : 'POST',
		url : viewUrl,
		//crossDomain: true,
		data: req ,
		dataType:'text',

		beforeSend: function(){
			//loadLoader();	
	    },
	    complete: function(){
		},
		success : function(result){
			surveyData = result;
			if($(result).find('survey').length == 0){
				$('#survey-list').css('display','block');
				$('#survey-detail').css('display','none');
				$('#survey-list').html('<h4>Records not found. Please create a new survey</h4>');
			}
			$(result).find('survey').each(function(i){
				var surveyId = $(this).find('surveyId').text();
				$('#survey-list').append("<a class='surveyLink' id='"+surveyId+"'>Survey"+" "+i+"</a><br><br><br>")
			});
		},
		error : function(msg) {
			
			/*openPopup({
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
			});*/
		}
	});
}

function submitSurvey(){
	
	var fileList = $('#fileList').text().split(';');
	fileListReq = "";
	$(fileList).each(function(f){
		fileListReq +="<fileName>"+f+"</fileName>";
	});
	
	var req="<createReq><name>" + $('#cust-name').val()
	+ "</name>" + "<address>" + $('#cust-add').val()
	+ "</address>" + "<room>" + $('#room').val()
	+ "</room><type>" + $('#type').val()
	+ "</type>" + "<by>" + $('#by').val()
	+ "</by>" + "<date>" + $('#date').val()
	+ "</date>" + "<rem>" + $('#rem').val() + "</rem>"
	+ "<attachlist>" + fileListReq + "</attachlist>"
	+ "</createReq>";
		
    //alert(ewosumreq);
	//var viewUrl = "http://vbscqtd5.ebiz.verizon.com:7001/Vbuild-CXM/rest/jobassignment/getJobSummary";
	var viewUrl = "http://113.128.161.204:8080/com.vogella.jersey.first/rest/hello";
	$.ajax({
		type : 'POST',
		url : viewUrl,
		//crossDomain: true,
		data: req ,
		mediaType:'TEXT_XML',

		beforeSend: function(){
			//loadLoader();	
	    },
	    complete: function(){
		},
		success : function(result){},
		error : function(msg) {
			
			/*openPopup({
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
			});*/
		}
	});
}
