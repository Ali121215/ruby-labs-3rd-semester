class Desk
	def initialize(len, wid)
		@len = len
		@wid = wid
	end

	def sq
		square = @len * @wid
		square
	end

	def get_len
		@len
	end

	def get_wid
		@wid
	end
end

class Box < Desk
	@hgt = 0
	def initialize(len, wid, hgt)
		super(len, wid)
		@hgt = hgt
	end

	def vol
		v = sq * @hgt
		v
	end

	def get_hgt
		@hgt
	end
end
