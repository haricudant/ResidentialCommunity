class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :firstname
      t.string :lastname
      t.integer :door_no
      t.string :spouse_name
      t.integer :Number_of_Cars
      t.boolean :Intrested_in_events
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
