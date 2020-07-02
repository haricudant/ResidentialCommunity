class CreateVotes < ActiveRecord::Migration[5.2]
  
  def change
    create_table :votes do |t|
      t.references :user, foreign_key: true
      t.references :vote_value, foreign_key: true
      t.timestamps
     end
     add_index :votes, [:vote_value_id, :user_id], unique: true
  end
  
end
