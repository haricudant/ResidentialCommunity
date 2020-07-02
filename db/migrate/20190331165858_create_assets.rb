class CreateAssets < ActiveRecord::Migration[5.2]
  def change
    create_table :assets do |t|
      t.string :assetname
      t.string :assettype
      t.string :workingcondition
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
