class CreateConsultants < ActiveRecord::Migration
  def change
    create_table :consultants do |t|
      t.string :name
      t.belongs_to :consultant_category, index: true
      t.belongs_to :clinic, index: true

      t.timestamps null: false
    end
    add_foreign_key :consultants, :consultant_categories
    add_foreign_key :consultants, :clinics
  end
end
