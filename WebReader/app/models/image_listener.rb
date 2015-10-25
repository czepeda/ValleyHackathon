class ImageListener
	def initialize
		@images = Array.new
		@images << "test.jpg"
	end
	def image(el)
		@images << el[:image]
	end

	def images
		@images
	end
end