class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.belongs_to :patient, index: true
      t.belongs_to :consultant, index: true

      t.timestamps null: false
    end
    add_foreign_key :invoices, :patients
    add_foreign_key :invoices, :consultants
  end
end
