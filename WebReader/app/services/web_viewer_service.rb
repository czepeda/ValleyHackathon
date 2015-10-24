require 'net/https'


class WebviewerService
	def initialize
		@index = 0
        @array = []
	end
	def read_url(url)
		uri = URI(url)
		x = Net::HTTP.get(uri)
		puts "@@@@@@@@@@@@@@@@@@@@@@@ #{url}"
		x
	end

	def split_into_lines(str)
        @array = str.split(/\r?\n/)
    end

    def emit_p
        length = @array.length
    	loop do
    		if (@index > length) 
    			return nil
    		end
    		str = @array[@index]
    		@index = @index + 1


    	   break if ( str =~ /<p>(.*)<\/p>/ )
        end
    	result = $1
    	{type: 'P', text: result}
    end
end
