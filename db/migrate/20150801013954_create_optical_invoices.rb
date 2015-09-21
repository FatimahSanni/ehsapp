class CreateOpticalInvoices < ActiveRecord::Migration
  def change
    create_table :optical_invoices do |t|
      t.belongs_to :patient, index: true
      t.belongs_to :optometrist, index: true

      t.timestamps null: false
    end
    add_foreign_key :optical_invoices, :patients
    add_foreign_key :optical_invoices, :optometrists
  end
end
