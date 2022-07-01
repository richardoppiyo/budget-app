class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions, &:timestamps
  end
end
