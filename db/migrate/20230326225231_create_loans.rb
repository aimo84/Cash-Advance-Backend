class CreateLoans < ActiveRecord::Migration[7.0]
  def change
    create_table :loans do |t|
      t.string :full_name
      t.integer :loan_amount
      t.float :interest_rate
      t.integer :loan_tenure
      t.string :loan_status

      t.timestamps
    end
  end
end
