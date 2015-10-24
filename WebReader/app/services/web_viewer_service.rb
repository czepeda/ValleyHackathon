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
		line_num=0
        
        str.split(/\r\n/).each_line do |line|
        
        	puts "#{line_num}: #{line}"
            line_num++
    end


end


end
