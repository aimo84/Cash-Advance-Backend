class RenameLoanColumns < ActiveRecord::Migration[7.0]
  def change
    rename_column :loans, :full_name, :fullName
    rename_column :loans, :loan_amount, :loanAmount
    rename_column :loans, :interest_rate, :interetRate
    rename_column :loans, :loan_tenure, :loanTenure
    rename_column :loans, :loan_status, :loanStatus
  end
end
