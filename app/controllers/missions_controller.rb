class MissionsController < ApplicationController
  def index
    @missions = Mission.all
    render json: @missions
  end

  # def new
  #   Mission.create()
  # end

  # # private
  # # def strong_params
  # #   params.require()
  # # end
end
