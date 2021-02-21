class ProjectsController < ApplicationController
  before_action :find_project,except:[:index,:new,:create]

  def index
    @projects=current_user.projects.all
  end
  def new
    @project=current_user.projects.new
  end  
  def create
    @project=current_user.projects.new(project_pramas_permit)
    if @project.save
      redirect_to root_path
    else
      render :new
    end    
  end

  def edit

  end

  def update
 
    if @project.update(project_pramas_permit)
      redirect_to root_path
    else
      render :edit
    end
  end

  def show
    
  end
  
  private
  
  def find_project
    @project=Project.find(params[:id])
  end

  def project_pramas_permit
      params.require(:project).permit(:project_name,:project_content,:project_picture)
        
  end
end
