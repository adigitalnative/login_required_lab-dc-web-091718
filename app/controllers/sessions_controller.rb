class SessionsController < ApplicationController

  def welcome
    
  end

  def new
  end

  def create
    if !params[:name] || params[:name].blank?
      redirect_to controller: 'sessions', action: 'new'
    else
      session[:name] = params[:name]
      redirect_to welcome_path
    end
  end

  def destroy
    session.delete :name
    redirect_to controller: 'sessions', action: 'new'
  end

end
