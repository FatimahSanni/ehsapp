class CreateProcedures < ActiveRecord::Migration
  def change
    create_table :procedures do |t|
      t.belongs_to :service, index: true
      t.belongs_to :procedure_record, index: true

      t.timestamps null: false
    end
    add_foreign_key :procedures, :services
    add_foreign_key :procedures, :procedure_records
  end
end
