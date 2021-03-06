class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :render_modal]

  def home
    @projects = Project.all.order('priority desc')
    @message = Message.new
  end

  def render_modal
    @project = Project.find(params[:format])
  end
end
