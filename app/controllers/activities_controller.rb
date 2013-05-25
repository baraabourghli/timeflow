class ActivitiesController < ApplicationController

  # GET /activities.json
  def index
    @activities = Activity.all

    respond_with @activities
  end

  # GET /activities/1.json
  def show
    @activity = Activity.find(params[:id])

    respond_to do |format|
      format.json { render json: @activity }
    end
  end

end
