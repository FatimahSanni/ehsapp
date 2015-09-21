class CreateOptometrists < ActiveRecord::Migration
  def change
    create_table :optometrists do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
