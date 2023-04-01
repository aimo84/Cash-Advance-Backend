class AddColumnsToClients < ActiveRecord::Migration[7.0]
  def change
    add_column :clients, :loanAmount, :integer
    add_column :clients, :businessHistory, :string
    add_column :clients, :businessLocation, :string
  end
end
