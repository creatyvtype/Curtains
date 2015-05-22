class CreatePerformances < ActiveRecord::Migration
  def change
    create_table :performances do |t|
      t.integer :address_id
      t.integer :production_id
      t.datetime :date_and_time
      t.decimal :price

      t.timestamps
    end
  end
end
