class Admin::CategoriesController < Admin::BaseController

  def index
    
  end

  def new
    @category=Category.new
  end

  def crate
    
  end

  def edit
    
  end

  def update
    
  end

  def destroy
    
  end

  private

  def find_category
  
  end

  def category_params
    params.require(:categories).permit(:name)
  end
end
