class CreateConsultantCategories < ActiveRecord::Migration
  def change
    create_table :consultant_categories do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
