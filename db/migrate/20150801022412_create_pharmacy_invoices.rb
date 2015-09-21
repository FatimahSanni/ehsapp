class CreatePharmacyInvoices < ActiveRecord::Migration
  def change
    create_table :pharmacy_invoices do |t|
      t.belongs_to :patient, index: true
      t.belongs_to :consultant, index: true

      t.timestamps null: false
    end
    add_foreign_key :pharmacy_invoices, :patients
    add_foreign_key :pharmacy_invoices, :consultants
  end
end
