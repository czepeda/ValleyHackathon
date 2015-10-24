require 'net/https'


class WebviewerService
	def read_url(url)
		uri = URI(url)
		x = Net::HTTP.get(uri)
		puts "@@@@@@@@@@@@@@@@@@@@@@@ #{url}"
		#puts x
		x
	end

	def emit_p(str)
        
        str.split(/\r?\n/).each_with_index do |line, index|
        
        	puts "#{index+1}: #{line}"

    	end


	end


end
