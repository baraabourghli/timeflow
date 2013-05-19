class ProjectsController < ApplicationController
  respond_to :json

  # GET /projects.json
  def index
    @projects = current_user.projects
    @projects << current_user.contribution

    respond_with @projects
  end

  # GET /projects/1.json
  def show
    @project = Project.find(params[:id])

    respond_with @project
  end

  # POST /projects.json
  def create
    @project = Project.new(params[:project])
    @project.owner = current_user

    respond_to do |format|
      if @project.save
        format.json { render json: @project, status: :created, location: @project }
      else
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /projects/1.json
  def update
    @project = Project.find(params[:id])

    respond_to do |format|
      if @project.update_attributes(params[:project])
        format.json { head :no_content }
      else
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1.json
  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    respond_to do |format|
      format.json { head :no_content }
    end
  end
  
end
