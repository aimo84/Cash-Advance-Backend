class LoansController < ApplicationController
    # before_action :authorize
    
    def index
    @loans = Loan.all
    render json: @loans, each_serializer: LoanSerializer
    end

    def show
    @loan = Loan.find(params[:id])
    render json: @loan, serializer: LoanSerializer
    end

    def create
    @loan = Loan.new(loan_params)

    if @loan.save
        render json: @loan, status: :created, serializer: LoanSerializer
    else
        render json: @loan.errors, status: :unprocessable_entity
    end
    end

    def update
    @loan = Loan.find(params[:id])

    if @loan.update(loan_status_params)
        @loan.save
        render json: @loan, serializer: LoanSerializer
    else
        render json: @loan.errors, status: :unprocessable_entity
    end
    end

    def destroy
    @loan = Loan.find(params[:id])
    @loan.destroy
    head :no_content
    end

    private

    def loan_params
        params.require(:loan).permit(:fullName, :loanAmount, :interestRate, :loanTenure, :loanStatus, :loanDisbursed)
    end

    def loan_status_params
        params.fetch(:loan).permit(:loanStatus, :loanDisbursed)
    end
end
