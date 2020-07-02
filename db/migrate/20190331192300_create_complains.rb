class CreateComplains < ActiveRecord::Migration[5.2]
  def change
    create_table :complains do |t|
      t.string :description
      t.datetime :appointment
      t.string :providername
      t.string :mailid
      t.string :attachment
      t.references :user, foreign_key: true
      t.references :asset, foreign_key: true
      t.references :serviceprovider, foreign_key: true

      t.timestamps
    end
  end
end
