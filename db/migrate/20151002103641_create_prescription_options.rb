class CreatePrescriptionOptions < ActiveRecord::Migration
  def change
    create_table :prescription_options do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
