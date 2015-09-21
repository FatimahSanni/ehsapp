class CreateVisualAcuities < ActiveRecord::Migration
  def change
    create_table :visual_acuities do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
