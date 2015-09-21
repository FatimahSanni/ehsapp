class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.float :amount
      t.belongs_to :invoice, index: true

      t.timestamps null: false
    end
    add_foreign_key :items, :invoices
  end
end
