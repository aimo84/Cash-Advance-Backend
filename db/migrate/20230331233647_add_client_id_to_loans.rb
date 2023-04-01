class AddClientIdToLoans < ActiveRecord::Migration[7.0]
  def change
    add_column :loans, :client_id, :integer
  end
end
