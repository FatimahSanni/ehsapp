class CreateMirrorOpticalStocks < ActiveRecord::Migration
  def change
    create_table :mirror_optical_stocks do |t|
      t.string :amount
      t.belongs_to :optical_stock, index: true

      t.timestamps null: false
    end
    add_foreign_key :mirror_optical_stocks, :optical_stocks
  end
end
