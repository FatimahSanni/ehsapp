class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.boolean :vacant, null: false, default: true

      t.timestamps null: false
    end
  end
end
