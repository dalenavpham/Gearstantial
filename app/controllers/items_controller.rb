class ItemsController < ApplicationController

  def new 

  end

  def create
    item = Item.new(name: params[:items][:name], serial: params[:items][:serial], category: params[:items][:category], year: params[:items][:year])
    item.save

    flash[:notice] = "Item was created with id##{item.id}"
    render :index
  end

  def index
  end

end
