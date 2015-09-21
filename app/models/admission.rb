class Admission < ActiveRecord::Base
  after_create :occupy_room
  belongs_to :patient
  belongs_to :service
  belongs_to :room_master
  belongs_to :anaesthesia
  belongs_to :lens_type
  belongs_to :room
  
  private

  def occupy_room
  	room = self.room_id
  	Room.where(id: room).update(vacant: false)
  end

end
