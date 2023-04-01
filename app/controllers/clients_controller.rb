    class ClientsController < ApplicationController
        # before_action :authorize
    
    def index
        @clients = Client.all
        render json: @clients, each_serializer: ClientSerializer
    end

    def show
        @client = Client.find(params[:id])
        render json: @client, serializer: ClientSerializer
    end

    def create
        @client = Client.new(client_params)

        if @client.save
        render json: @client, serializer: ClientSerializer, status: :created
        else
        render json: @client.errors, status: :unprocessable_entity
        end
    end

    def update
        @client = Client.find(params[:id])

        if @client.update(client_params)
        render json: @client, serializer: ClientSerializer
        else
        render json: @client.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @client = Client.find(params[:id])
        @client.destroy
    end

    private

    def client_params
        params.require(:client).permit(:fullName, :email, :phone, :age, :gender, :loanAmount, :businessHistory, :businessLocation)
    end
    end
