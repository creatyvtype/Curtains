class AddImagesToProductionsAndCompanies < ActiveRecord::Migration
  def change
    add_column :productions, :image, :string
    add_column :companies, :image, :string
  end
end
