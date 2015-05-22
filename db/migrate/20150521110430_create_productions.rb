class CreateProductions < ActiveRecord::Migration
  def change
    create_table :productions do |t|
      t.integer :company_id
      t.string :title
      t.string :writer
      t.string :director
      t.string :genre
      t.text :description
      t.string :url
      t.string :email

      t.timestamps
    end
  end
end
