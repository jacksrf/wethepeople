class GroupsController < ApplicationController

    def index
      @groups = Group.all
    end

    def new
      if session[:editor_id] == 1 || session[:editor_id] == 2
        @articles = Article.all.order('created_at DESC')
        @group = Group.new
      else
        redirect_to '/login'
      end
    end

    def create
      if session[:editor_id] == 1 || session[:editor_id] == 2
        @articles = []
        @group = Group.create(group_params)
        params[:article].each do |article|
          if article[1][:id] == "1"
            newArticle = article[0].to_i
            @articles.push(newArticle)
          end
        end
        @group.articles = @articles
        @group.save
        redirect_to '/'
      else
        redirect_to '/login'
      end
    end

    private
      def group_params
        params.require(:group).permit(:title, :content, :editor_id, :topic)
      end

end
