class ArticlesController < ApplicationController
  
  def index
    @categories=Category.all
    if params[:category]      
      @articles = Article.paginate(:page => params[:page]).where("category_id =#{params[:category]}") 
    else
      @articles = Article.paginate(:page => params[:page]) 
    end
  end

  def new
    @article = Article.new
    @categories = categories
  end

  def create
    article = Article.new article_params
    if article.save
      redirect_to root_path
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
    @categories = Category.all
  end

  def update
    article = Article.find(params[:id]) 
    if article.update(article_params)
      redirect_to article_path article
    end
  end

  def destroy
    article = Article.find(params[:id])
    if article.delete
      redirect_to root_path
    end
  end

  private

  def categories
    @_categories ||= Category.all
  end

  def article_params
    params.require(:article).permit(:title, :body, :category_id)
  end
end