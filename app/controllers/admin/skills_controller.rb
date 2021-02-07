class Admin::SkillsController < Admin::BaseController
 
  before_action :find_skill,except:[:index,:new,:create,:show]

  def index
    @skills=Skill.all
  end

  def new
    @skill=Skill.new
  end

  def create
     @skill.new(skill_params)
     if @skill.save
      redirect_to admin_skills_path,notice:"新增成功"
     else
      render :new
     end
  end

  def edit
  
  end

  def update
    if @skill.update(skill_params)
      redirect_to admin_skills_path,notice:"新增成功"
    else
      render :edit
    end  

  end


  private 

  def find_skill
    @skill=Skill.find(params[:id])
  end

  def skill_params
    params.require(:skills).permit(:skill_name,:skill_value)
  end

 



end