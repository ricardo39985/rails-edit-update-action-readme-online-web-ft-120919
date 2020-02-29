class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new
    @article.title = params[:title]
    @article.description = params[:description]
    @article.save
    redirect_to article_path(@article)
  end
  def edit
    @article=Article.find(params[:id])    
  end

  def update
 
    @article=Article.find(params[:id])
    @article.update(title: params[:article][:title]) if !params[:article][:title].empty?
    @article.update(title: params[:article][:description]) if !params[:article][:description]
    if @article.save
      redirect_to article_path(@article)
    else
      render :edit
    end
  end
  # add edit and update methods here
end
