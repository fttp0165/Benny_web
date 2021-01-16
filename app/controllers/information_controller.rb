class InformationController < ApplicationController
  def index
    @info=Information.first
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


  private

  def info_parama_primet
    params.require(:information).permit(:name,:ename,:picture)
  end
end
