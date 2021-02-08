class Admin::InformationController < Admin::BaseController
  before_action :find_info,only:[:edit,:update]
  def index
    @info=Information.all
  end
  def new
    @info=Information.new
  end
  def create
    @info=Information.new(info_params)
    if @info.save
      redirect_to admin_information_index_path,notice:"更新成功"
    else
      render :new
    end
  end

  def edit
    
  end

  def update
   if @info.update(info_params)
    redirect_to admin_information_index_path,notice:"更新成功"
   else
    render :edit
   end
  end

  private

  def find_info
    @info=Information.find(params[:id])
  end

  def info_params
    params.require(:information).permit(:name,:ename,:picture,:summary)
  end
end
