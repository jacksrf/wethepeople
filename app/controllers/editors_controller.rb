class EditorsController < ApplicationController

def show
  if params[:id]
    @articles = Article.all
    render template: "layouts/admin"
  else
    redirect_to editor_path(session[:editor_id])
  end
end

end
