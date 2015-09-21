class CreateCounsellors < ActiveRecord::Migration
  def change
    create_table :counsellors do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
