class CreateMirrorServices < ActiveRecord::Migration
  def change
    create_table :mirror_services do |t|
      t.float :amount
      t.belongs_to :service, index: true

      t.timestamps null: false
    end
    add_foreign_key :mirror_services, :services
  end
end
