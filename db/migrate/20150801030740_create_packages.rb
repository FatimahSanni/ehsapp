class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.string :name
      t.float :registration_fee
      t.float :fup_fee

      t.timestamps null: false
    end
  end
end
