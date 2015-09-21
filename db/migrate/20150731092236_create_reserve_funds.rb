class CreateReserveFunds < ActiveRecord::Migration
  def change
    create_table :reserve_funds do |t|
      t.belongs_to :patient, index: true
      t.float :amount
      t.text :remark

      t.timestamps null: false
    end
    add_foreign_key :reserve_funds, :patients
  end
end
