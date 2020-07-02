class CreateServiceproviders < ActiveRecord::Migration[5.2]
  def change
    create_table :serviceproviders do |t|
      t.string :providername
      t.string :providerservice
      t.string :mailid

      t.timestamps
    end
  end
end
