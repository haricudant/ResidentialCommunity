class CreateUserinterests < ActiveRecord::Migration[5.2]
  def change
    create_table :userinterests do |t|
      t.string :isinterest
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
