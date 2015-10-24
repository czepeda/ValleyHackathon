require 'net/https'


class WebviewerService
	def read_url(url)
		uri = URI(url)
		x = Net::HTTP.get(uri)
		puts "@@@@@@@@@@@@@@@@@@@@@@@ #{url}"
		puts x
		x
	end

end
