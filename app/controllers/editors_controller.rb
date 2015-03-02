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

    def new
      if session[:editor_id] == 1
        @editor = Editor.new
      else
        redirect_to '/login'
      end
    end

    def create
      if session[:editor_id] == 1
        @editor = Editor.create(editor_params)
        redirect_to 'editor'
      else
        redirect_to '/login'
      end
    end

    private
      def editor_params
        params.require(:editor).permit(:name, :location, :password, :username)
      end
end
