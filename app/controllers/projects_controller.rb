class ProjectsController < ApplicationController
  before_action :find_project,except:[:index,:new,:create]

  def index
    @projects=Article.projects.all
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
