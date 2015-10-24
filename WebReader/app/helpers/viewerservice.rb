require 'open-url'


class WebviewHelper

	def read_url(url)
		web_contents = open('http://google.com') {|f| f.read}
	end

end
