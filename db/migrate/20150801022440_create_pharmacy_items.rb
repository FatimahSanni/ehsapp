class CreatePharmacyItems < ActiveRecord::Migration
  def change
    create_table :pharmacy_items do |t|
      t.string :name
      t.float :amount
      t.belongs_to :pharmacy_invoice, index: true

      t.timestamps null: false
    end
    add_foreign_key :pharmacy_items, :pharmacy_invoices
  end
end
