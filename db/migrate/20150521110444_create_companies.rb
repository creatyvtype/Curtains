class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.integer :address_id
      t.string :name
      t.string :style
      t.text :description
      t.string :phone
      t.string :url
      t.string :email

      t.timestamps
    end
  end
end
