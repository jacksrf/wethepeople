class GroupsController < ApplicationController

  def index
    @groups = Group.all
  end

  def new
    @articles = Article.all.order('created_at DESC')
    @group = Group.new
  end

  def create
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
  end

  private
    def group_params
      params.require(:group).permit(:title, :content, :editor_id, :topic)
    end

end
