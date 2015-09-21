class CreatePharmacyStocks < ActiveRecord::Migration
  def change
    create_table :pharmacy_stocks do |t|
      t.string :name
      t.float :amount
      t.string :category

      t.timestamps null: false
    end
  end
end
