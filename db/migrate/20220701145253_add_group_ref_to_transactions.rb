class AddGroupRefToTransactions < ActiveRecord::Migration[7.0]
  def change
    add_reference :transactions, :group, null: false, foreign_key: true
  end
end
