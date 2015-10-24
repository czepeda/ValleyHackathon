class ParaListener
	def initialize
		@data = ""
	end
	def para(el)
		@data << "#{el[:text]}\n"
	end

	def data
		@data
	end
end