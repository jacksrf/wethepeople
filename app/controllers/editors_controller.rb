class EditorsController < ApplicationController
    def show
      if session[:editor_id] == 1 || session[:editor_id] == 2
        if params[:id]
          @articles = Article.all
          render template: "layouts/admin"
        else
          redirect_to editor_path(session[:editor_id])
        end
      else
        redirect_to '/login'
      end
    end
end
