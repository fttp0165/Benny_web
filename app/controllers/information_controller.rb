class InformationController < ApplicationController
  def index
    @info=Information.first
    @projects=Project.all
    @skills=Skill.all
  end
  def new 
    @info=Information.new
  end    
  def create
    @info=Information.new(info_parama_primet)
    if @info.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @info=Information.first
  end

  def update
    @info=Information.first
    if @info.update(info_parama_primet)
      redirect_to root_path
    else
      render :edit
    end
  end


  private

  def info_parama_primet
    params.require(:information).permit(:name,:ename,:picture,:summary)
  end
end
