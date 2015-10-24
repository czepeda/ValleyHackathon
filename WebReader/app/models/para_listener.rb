class ParaListener
	def initialize
		@data = ""
		@line = 1
	end
	def para(el)
		@data << "<p data-line='#{@line}' class='marker'>#{el[:text]}</p>"
		@line+=1
	end

	def data
		@data
	end
end