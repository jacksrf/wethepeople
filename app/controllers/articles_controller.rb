class ArticlesController < ApplicationController

def new
  @article = Article.new
end

def create
  @article = Article.create(article_params)
  redirect_to '/editor'
end

private
  def article_params
    params.require(:article).permit(:title, :publication, :author, :date, :url, :topic)
  end


end
