$(function() {
	last_line = 1
  setInterval(function() {
  	var changed = false; 
    $("p.marker").filter(":onScreen").each(function() {
    	var line = parseInt($(self).attr('data_line'))
    	if(last_line < line  )	{
    	  last_line = line
    	  changed = true
    	} 
	})


    //If last line changed sent result to method
   if (changed) {
      $.ajax({ 
      type: "GET", 
      url: '/update_page_position',  
      data: {"line_number": last_line, "url": page_url}, 
      dataType: "script", 

      success: function(data) {
      console.log(data);
    }  
  });
}}

$('a.image_view').on('click', function(e){
    e.preventDefault();
    a = $(this)
    $('#popup').load($(this).prop('a'), function(){
        $('#popup').dialog('open');
        $("#imagepopup").attr("src", a.attr("link"))
    });
});







}); 























   




