class CreateVoteValues < ActiveRecord::Migration[5.2]
  def change
    create_table :vote_values do |t|
      t.string :title
      t.references :poll, foreign_key: true

      t.timestamps
    end
  end
end
