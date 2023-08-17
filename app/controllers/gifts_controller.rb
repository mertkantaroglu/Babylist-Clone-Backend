class Api::V1::GiftsController < ApplicationController
  def index
    # return gifts in descending order
    render json: Gift.all.order(created_at: :desc)
  end
end