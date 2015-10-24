
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
	});

   //If last lien changed sent result to method
   if (changed) {
   	  $.ajax({ 
      type: "GET", 
      url: '/update_page_position',  
      data: {"line_number": last_line, "url": page_url}, 
      dataType: "script", 

      success: fucntion(data) {
  	  console.log(data);
    });
  
  }
});

     	 
    	   

