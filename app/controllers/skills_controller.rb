class SkillsController < ApplicationController

  def new
    @skill=Skill.new
  end

  def create
    @skill=Skill.new(skill_params_permit)
    if @skill.save
      redirect_to admin_skills_path
    else
      render :new
    end
  end


  private

  def skill_params_permit
    params.require(:skill).permit(:skill_name,:skill_value)
  end
end
