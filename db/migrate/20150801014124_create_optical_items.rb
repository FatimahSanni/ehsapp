class CreateOpticalItems < ActiveRecord::Migration
  def change
    create_table :optical_items do |t|
      t.string :name
      t.float :amount
      t.belongs_to :optical_invoice, index: true

      t.timestamps null: false
    end
    add_foreign_key :optical_items, :optical_invoices
  end
end
