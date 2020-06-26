class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    find_project
  end
  
  def new
    @project = Project.new
  end

  def create
    @project = Project.create(project_params)
    redirect_to project_path(@project)
  end

  private

  def project_params
    params.require(:project).permit(:name, :description, :dev_ids => [])
  end

  def find_project
    @project = Project.find(params[:id])
  end
end
