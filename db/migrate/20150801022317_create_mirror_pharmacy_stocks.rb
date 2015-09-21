class CreateMirrorPharmacyStocks < ActiveRecord::Migration
  def change
    create_table :mirror_pharmacy_stocks do |t|
      t.string :amount
      t.belongs_to :pharmacy_stock, index: true

      t.timestamps null: false
    end
    add_foreign_key :mirror_pharmacy_stocks, :pharmacy_stocks
  end
end
