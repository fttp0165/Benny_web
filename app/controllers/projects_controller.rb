class ProjectsController < ApplicationController


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
    @project=Project.find(params[:id])
  end

  def update
    @project=Project.find(params[:id])
    if @project.update(project_pramas_permit)
      redirect_to root_path
    else
      render :edit
    end
  end
  
  private
  def project_pramas_permit
      params.require(:project).permit(:project_name,:project_content,:project_picture)
        
  end
end
