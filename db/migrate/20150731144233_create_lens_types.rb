class CreateLensTypes < ActiveRecord::Migration
  def change
    create_table :lens_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
