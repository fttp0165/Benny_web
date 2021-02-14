class Admin::ExperiencesController < Admin::BaseController
  before_action :find_experience,only:[:edit,:update,:destroy]
  def index
    @exp=Experience.all
  end

  def new
    @exp=Experience.new
  end

  def create
    ff
    @exp=Experience.new(exp_params)
    # if @exp.save
    #   redirect_to admin_experiences_path,notice:"新增經歷成功"
    # else
    #   render :new
    # end
  end

  def edit
    
  end

  def update
    if @exp.update(exp_params)
      redirect_to admin_experiences_path,notice:"更新經歷成功"
    else
      render :edit
    end
  end

  private

  def find_experience
    @exp=Experience.find(params[:id])
  end

  def exp_params
  
    params.require(:experience).permit(:name,
                                        :location,
                                        :start_date,
                                        :end_date,  
                                        :positin,
                                        :deleted_at)
  end
  
end
