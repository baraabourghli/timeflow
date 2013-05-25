class IssuesController < ApplicationController

  # GET /issues/1
  def show
    @issue = Issue.find(params[:id])
    
    respond_to do |format|
      format.html
    end
  end

  # POST /issues.json
  def create
    @issue = Project.find(params[:project_id]).issues.new(params[:issue])

    respond_to do |format|
      if @issue.save
        format.json { render json: @issue, status: :created }
      else
        format.json { render json: @issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /issues/1.json
  def update
    @issue = Issue.find(params[:id])

    respond_to do |format|
      if @issue.update_attributes(params[:issue])
        format.json { head :no_content }
      else
        format.json { render json: @issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /issues/1.json
  def destroy
    @issue = Issue.find(params[:id])
    @issue.destroy

    respond_to do |format|
      format.json { head :no_content }
    end
  end

end
