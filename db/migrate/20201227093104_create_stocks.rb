class CreateStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :stocks do |t|
      t.integer :total_amount, default: 0
      t.integer :total_sum, default: 0
      t.integer :to_client_amount, default: 0
      t.integer :to_client_sum, default: 0
      t.integer :from_client_amount, default: 0
      t.integer :from_client_sum, default: 0

      t.timestamps
    end
  end
end
