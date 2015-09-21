class RoomMaster < ActiveRecord::Base
	after_save :create_rooms

	def create_rooms
		prefix = self.prefix
		total = (self.amount - 1)
		for i in 0..(total)
			name = "#{self.prefix}"+"#{i.next}"
			if Room.exists?(name: name)
			else
				Room.create(name: name)
			end
		end
	end
end
