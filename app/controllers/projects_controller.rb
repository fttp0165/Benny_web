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
  
  
  def project_pramas_permit
      params.require(:project).permit(:project_name,:project_content,:project_picture)
        
  end
end
