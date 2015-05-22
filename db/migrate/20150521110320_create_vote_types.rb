class CreateVoteTypes < ActiveRecord::Migration
  def change
    create_table :vote_types do |t|
      t.string :criteria
      t.text :description

      t.timestamps
    end
  end
end
