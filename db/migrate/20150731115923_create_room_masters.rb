class CreateRoomMasters < ActiveRecord::Migration
  def change
    create_table :room_masters do |t|
      t.string :name
      t.integer :amount
      t.string :prefix

      t.timestamps null: false
    end
  end
end
