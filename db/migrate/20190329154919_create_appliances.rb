class CreateAppliances < ActiveRecord::Migration[5.2]
  def change
    create_table :appliances do |t|
      t.string :Appliance_name
      t.integer :Appliance_watt

      t.timestamps
    end
  end
end
