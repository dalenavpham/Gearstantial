class ItemsController < ApplicationController

  def new 

  end

  def create
    item = Item.new(name: params[:items][:name], serial: params[:items][:serial], category: params[:items][:category], year: params[:items][:year])
    item.save

    flash[:notice] = "Item was created with id##{item.id}"
    redirect_to '/items', flash: flash
  end

  def index
    @items = Item.all
  end

end
