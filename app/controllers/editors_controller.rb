class EditorsController < ApplicationController

def show
  binding.pry
  if params[:id]
    @articles = Article.all
    render template: "layouts/admin"
  else
    binding.pry
    redirect_to editor_path(session[:editor_id])
  end
end

end
