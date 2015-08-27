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
