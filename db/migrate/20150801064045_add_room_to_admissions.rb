class AddRoomToAdmissions < ActiveRecord::Migration
  def change
    add_reference :admissions, :room, index: true
    add_foreign_key :admissions, :rooms
  end
end
