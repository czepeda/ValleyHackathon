require 'net/https'


class WebviewerService
	def init
		@start = 0
	end
	def read_url(url)
		uri = URI(url)
		x = Net::HTTP.get(uri)
		puts "@@@@@@@@@@@@@@@@@@@@@@@ #{url}"
		#puts x
		x
	end

	def split_into_lines(str)
        
        lines = str.split(/\r?\n/)
        @length = lines.length
    end

    def emit_p(array)
    	do
    		if (@start > @length) 
    			return nil
    		end
    		str = array[@start]
    		@start = @start + 1


    	while ! ( str =~ /<p>(.*)<\/p>/ )
    		result = $_
    		{type: 'P', text: result}


    end



end
