class SprintsController < ApplicationController
  before_action :set_sprint, only: [:show, :edit, :update, :destroy, :scrumboard]
  before_action :set_project
  load_and_authorize_resource
  # GET /sprints
  # GET /sprints.json
  def index
    @sprints = Sprint.where('project_id = ?', @project.id).all
  end

  # GET /sprints/1
  # GET /sprints/1.json
  def show
  end


  def scrumboard
    @status = [:todo, :in_progress, :done, :delivered]
    @tasks = @sprint.tasks
  end

  # GET /sprints/new
  def new
    @sprint = Sprint.new
    @project = Project.find(params[:project_id])
  end

  # GET /sprints/1/edit
  def edit
  end

  # POST /sprints
  # POST /sprints.json
  def create
    @sprint = Sprint.new(sprint_params)
    @sprint.project=@project
    respond_to do |format|
      if @sprint.save
        format.html { redirect_to project_sprint_path(@sprint.project, @sprint), notice: 'Sprint was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sprint }
      else
        format.html { render action: 'new' }
        format.json { render json: @sprint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sprints/1
  # PATCH/PUT /sprints/1.json
  def update
    respond_to do |format|
      if @sprint.update(sprint_params)
        format.html { redirect_to project_sprint_path(@sprint.project, @sprint), notice: 'Sprint was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sprint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sprints/1
  # DELETE /sprints/1.json
  def destroy
    @sprint.destroy
    respond_to do |format|
      format.html { redirect_to project_sprints_url(params[:project_id]) }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_sprint
    @sprint = Sprint.find(params[:id])

  end

  def set_project
    @project = Project.find(params[:project_id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def sprint_params
    params.require(:sprint).permit(:version, :name, :project_id, :start_date, :end_end, :status, :initial_time)
  end
end
