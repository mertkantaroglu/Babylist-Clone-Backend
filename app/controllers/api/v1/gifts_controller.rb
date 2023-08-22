class Api::V1::GiftsController < ApplicationController
  def index
    # return gifts in descending order
    render json: Gift.all.order(created_at: :desc)
  end

  def create
    gift = Gift.create!(gift_params)
    if gift
      render json: gift
    else
      render json: gift.errors
    end
  end

  def show
    @gift = Gift.find(params[:id])
    render json: @gift
  end

  def destroy
    @gift&.destroy
    render json: { message: 'Gift deleted!' }
  end

  private

  def gift_params
    params.permit(:name, :price, :color, :count, :image_url, :description, :specs)
  end

  def set_gift
    @gift = Gift.find(params[:id])
  end
end