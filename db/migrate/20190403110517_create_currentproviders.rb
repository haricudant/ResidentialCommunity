class CreateCurrentproviders < ActiveRecord::Migration[5.2]
  def change
    create_table :currentproviders do |t|
      t.string :providername
      t.decimal :cost
      t.decimal :standingcharge
      t.decimal :pslvcharge

      t.timestamps
    end
  end
end
