class Admin::ArticlesController < Admin::BaseController
  before_action :find_artivle,only:[:edit,:update,:destory]

  def index
    @articles=Article.order(created_at: :desc).page(params[:page]).per(10)
  end

  def new
    @article=Article.new
  end

  def create
    @article=Article.new(article_params)
    if @article.save
      redirect_to admin_articles_path,notice:"新增成功！"
    else
      render :new
    end
  end

  def edit
    
  end

  def update
    if @article.update(article_params)
      redirect_to admin_articles_path,notice:"更新成功！"
    else
      render :edit
    end
  end

  def destroy
    
  end

  private

  def find_artivle
    @article=Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title,:content,:category_id,:created_at)
  end
end
