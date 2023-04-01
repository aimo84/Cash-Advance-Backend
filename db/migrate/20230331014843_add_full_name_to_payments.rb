class AddFullNameToPayments < ActiveRecord::Migration[7.0]
  def change
    add_column :payments, :fullName, :string
  end
end
