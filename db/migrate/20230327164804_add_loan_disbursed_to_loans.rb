class AddLoanDisbursedToLoans < ActiveRecord::Migration[7.0]
  def change
    add_column :loans, :loanDisbursed, :string, default: 'N/A'
  end
end
