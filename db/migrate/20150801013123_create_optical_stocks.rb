class CreateOpticalStocks < ActiveRecord::Migration
  def change
    create_table :optical_stocks do |t|
      t.string :name
      t.float :amount
      t.string :category

      t.timestamps null: false
    end
  end
end
