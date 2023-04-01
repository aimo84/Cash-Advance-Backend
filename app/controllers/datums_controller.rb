class DatumsController < ApplicationController
    # before_action :authorize
    before_action :set_datum, only: [:show, :update, :destroy]

    def index
    @datums = Datum.all
    render json: @datums, each_serializer: DatumSerializer
    end

    def show
    render json: @datum, serializer: DatumSerializer
    end

    def create
    @datum = Datum.new(datam_params)

    if @datum.save
        render json: @datum, status: :created, serializer: DatumSerializer
    else
        render json: @datum.errors, status: :unprocessable_entity
    end
    end

    def update
    if @datum.update(datam_params)
        render json: @datum, serializer: DatumSerializer
    else
        render json: @datum.errors, status: :unprocessable_entity
    end
    end

    def destroy
    @datum.destroy
    end

    private

    def set_datum
    @datum = Datum.find(params[:id])
    end

    def datam_params
    params.require(:datum).permit(:fullName, :email, :phone, :businessHistory, :businessLocation)
    end
end
