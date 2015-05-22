class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :user_id
      t.integer :performance_id
      t.integer :vote_type_id
      t.integer :score
      t.text :comment

      t.timestamps
    end
  end
end
