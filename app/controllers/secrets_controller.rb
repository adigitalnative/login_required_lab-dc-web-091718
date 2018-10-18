class SecretsController < ApplicationController
  include LoginHelper
  before_action :require_login


  def show
    
  end

  private

  def require_login
    redirect_to controller: 'sessions', action: 'new' unless current_user
  end
end
