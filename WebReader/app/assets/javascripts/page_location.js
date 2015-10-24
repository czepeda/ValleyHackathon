
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
   	   method()
    } 	 
    	   
  }, 1000)                              
})

