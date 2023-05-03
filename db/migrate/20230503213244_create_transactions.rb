# frozen_string_literal: true

class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.integer :order_id
      t.string :transaction_type
      t.float :value
      t.timestamps
    end
  end
end
