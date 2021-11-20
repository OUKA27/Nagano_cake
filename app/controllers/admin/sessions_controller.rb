class Admin::SessionsController < ApplicationController

  def new

  end

  def destroy
      reset_session
      redirect_to new_admin_session_path
  end

end
