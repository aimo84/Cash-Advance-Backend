class UpdateLoanDisbursedDefaultValue < ActiveRecord::Migration[7.0]
  def change
    change_column_default :loans, :loanDisbursed, 'N/A'

    # Update any existing records to set the default value
    Loan.update_all(loanDisbursed: 'N/A')
  end
end
