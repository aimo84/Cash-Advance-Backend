class ChangeInteretRateToInterestRateInLoans < ActiveRecord::Migration[7.0]
  def change
    rename_column :loans, :interetRate, :interestRate
  end
end
