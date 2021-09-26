class Possuvideo < ApplicationRecord

	def star_number
		self.star.blank? ? 1 : self.star
	end

	def cover
		self.image.blank? ? "default.jpg" : self.image
	end

end
