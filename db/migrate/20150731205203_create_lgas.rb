class CreateLgas < ActiveRecord::Migration
  def change
    create_table :lgas do |t|
      t.string :name
      t.belongs_to :state, index: true

      t.timestamps null: false
    end
    add_foreign_key :lgas, :states
  end
end
