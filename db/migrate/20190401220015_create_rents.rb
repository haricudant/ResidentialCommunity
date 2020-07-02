class CreateRents < ActiveRecord::Migration[5.2]
  def change
    create_table :rents do |t|
      t.decimal :grossrent
      t.decimal :mortage_interest
      t.string :mortage_interest_allowed
      t.decimal :repairs
      t.decimal :insurance
      t.decimal :management_charges
      t.decimal :agent_fee
      t.decimal :other
      t.decimal :total_expenses
      t.decimal :rental_profit_or_loss
      t.decimal :wear_and_tear
      t.decimal :net_profit_or_loss
      t.decimal :income_tac
      t.decimal :prsi
      t.decimal :usc
      t.decimal :total

      t.timestamps
    end
  end
end
