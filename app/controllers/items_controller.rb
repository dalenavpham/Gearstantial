class ItemsController < ApplicationController

  def new 
  end

  def create
    flash[:notice] = "Item Created!"
    render :index
  end

  def index
  end

end
