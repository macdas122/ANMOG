class DashboardController < ApplicationController
    def index
      @mains = Main.order(end_procedure: :desc)
      @count_finished = Main.where("status = 'finished'", params[:status]).count
      @count_opened = Main.where("status = 'Person name opened'", params[:status]).count
      @count_released = Main.where("status = 'released'", params[:status]).count
      @count_adjusted = Main.where("status = 'adjusted'", params[:status]).count
    end
end
