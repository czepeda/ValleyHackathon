require 'web_viewer_service'

class HtmlEmitter
	def initialize
		@start = 0
		@listeners = Array.new()
	end

	def addListener(listener)
		@listeners << listener
	end

	def parse(url)
		ws = WebviewerService.new()
		ar = ws.split_into_lines(ws.read_url(url))
		loop do
			el = ws.emit_p
			if(el)
				case el[:type]
				when 'P' then
					@listeners.each do |list|
						list.para(el) if list.respond_to? :para
					end
				end
			end
			break if !el
		end
	end
end