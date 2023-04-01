class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.decimal :amount
      t.string :payment_means
      t.integer :user_id

      t.timestamps
    end
  end
end
