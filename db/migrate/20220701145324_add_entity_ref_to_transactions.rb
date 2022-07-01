class AddEntityRefToTransactions < ActiveRecord::Migration[7.0]
  def change
    add_reference :transactions, :entity, null: false, foreign_key: true
  end
end
