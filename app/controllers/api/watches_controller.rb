module Api
  class WatchesController < ApplicationController
    def index
      # @watches = WatchApiService.get_watch_data
      # render json: @watches
      @watches = Watch.all
      render json: @watches
    end
  end
end
