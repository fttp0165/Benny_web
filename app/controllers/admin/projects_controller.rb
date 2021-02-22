class Admin::ProjectsController < Admin::BaseController

  before_action :find_project,only:[:edit,:update]

  def index
    @projects=Project.order(create_at: :desc)
  end

  def new
    @project=Project.new
  end

  def create
    @project=current_user.projects.new(project_params)
    if @project.save
      redirect_to admin_projects_path
    else
      render :new
    end   
  end  

  def edit
    
  end

  def update
    if @project.update(project_params)
      redirect_to edit_admin_project_path(@project),notice:"更新成功"
    else
      render :edit
    end
  end


  private

  def find_project
    @project=Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:project_name,:project_content,:user_id,:web_link)
  end
  
end
