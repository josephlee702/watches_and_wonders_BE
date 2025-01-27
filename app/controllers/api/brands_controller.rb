module Api
  class BrandsController < ApplicationController
    def index
      # @brands = Brand.all
      # render json: @brands
      @brands = Brand.all
      render json: @brands, include: :watches
    end
  end
end