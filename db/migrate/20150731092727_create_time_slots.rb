class CreateTimeSlots < ActiveRecord::Migration
  def change
    create_table :time_slots do |t|
      t.time :time

      t.timestamps null: false
    end
  end
end
