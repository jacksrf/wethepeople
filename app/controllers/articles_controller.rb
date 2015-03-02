class ArticlesController < ApplicationController

    def new
      if session[:editor_id] == 1 || session[:editor_id] == 2
        @article = Article.new
      else
        redirect_to '/login'
      end
    end

    def create
      if session[:editor_id] == 1 || session[:editor_id] == 2
        @article = Article.create(article_params)
        redirect_to '/editor'
      else
        redirect_to '/login'
      end
    end

    private
      def article_params
        params.require(:article).permit(:title, :publication, :author, :date, :url, :topic)
      end
end
