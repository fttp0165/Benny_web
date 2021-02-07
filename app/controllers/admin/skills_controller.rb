class Admin::SkillsController < Admin::BaseController
  def index
    @skills=Skill.all
  end
end