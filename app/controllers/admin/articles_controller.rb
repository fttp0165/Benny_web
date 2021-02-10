class Admin::ArticlesController < ApplicationController
  def index
    @articles=article.all
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
    
  end

  def destroy
    
  end

  private

  def find_artivle
    @article=Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:name)
  end
end
