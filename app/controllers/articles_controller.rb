class ArticlesController < ApplicationController
  def index
    @articles = Article.find(:all, :order => "created_at desc")
  end

  def show
    @article = Article.find params[:id]
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new params[:article]
    tags = Tag.get_tag_list_from_comma_list(params[:tags])
    @article.tags = tags
    @article.save
    if @article.save
      redirect_to(article_path(@article.id), :notice => 'Article was successfully created.')
    end
  end
                       
  def edit
    @article = Article.find params[:id]
  end
  
  def update
    @article = Article.find params[:id]
    tags = Tag.get_tag_list_from_comma_list(params[:tags])
    @article.tags = tags
    if @article.update_attributes(params[:article])
      redirect_to(article_path(@article.id), :notice => 'Article was successfully updated.')
      end
  end
end
