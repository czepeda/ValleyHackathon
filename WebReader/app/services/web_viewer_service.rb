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

    def emit_elements
        length = @array.length
        el = nil
    	loop do
    		if (@index > length) 
    			return nil
    		end
    		str = @array[@index]
    		@index = @index + 1

    	    case str 
                when /<p>(.*)<\/p>/ then el = {type: 'P', text: $1, line: @index}
                when /<img.+src=\"([^\"]*)\".*>/ then el = {type: 'IMG', image: $1, line: @index}    
                when /<img.+src='([^'']*)'.*>/ then el = {type: 'IMG', image: $1, line: @index}    
            end

            break if el
        end
    	el
    end
end
