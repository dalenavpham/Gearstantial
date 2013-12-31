class ItemsController < ApplicationController

  def new 

  end

  def create
    item = params[:items]

    flash[:notice] = "Form data recieved: #{item}"
    render :index
  end

  def index
  end

end
