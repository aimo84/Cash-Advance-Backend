class RemoveUserIdFromPayments < ActiveRecord::Migration[7.0]
  def change
    remove_column :payments, :user_id, :integer
  end
end
