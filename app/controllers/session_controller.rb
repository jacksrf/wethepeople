class SessionController < ApplicationController
  def new
    render :new
  end

  def create
        editor = Editor.find_by(username: params[:username])

        if editor && editor.authenticate(params[:password])
            @message = false
            session[:editor_id] = editor.id
            session[:username] = params[:username]
            binding.pry
            redirect_to '/editor'
        else
            @error = true
            render :new
        end
    end

  def destroy
    reset_session
    @message = false
    redirect_to '/login'
  end
end
