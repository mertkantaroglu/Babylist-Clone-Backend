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

  private

  def gift_params
    params.permit(:name, :price, :color, :count, :image_url, :description, :specs)
  end
end