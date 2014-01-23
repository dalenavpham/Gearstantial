class ItemsController < ApplicationController

  def new
    @item = Item.new
  end

  def create
    item = Item.new(permitted_params)  
    item.save

    flash[:notice] = "Item was created with id # #{item.id}"
    redirect_to '/items', flash: flash
  end

  def show
    @item = Item.find(params[:id])   
  end

  def edit
    #similar to show, but you are resubmitting the data and replacing its contents with the new content
    # common with an if statement (sucess or not?)
    @item = Item.find(params[:id])  
  end

  def update
    item = Item.find(params[:id])
    item.update(permitted_params)
    item.save

    flash[:notice] = "Item was updated with id # #{item.id}"
    redirect_to '/items', flash: flash
  end

  def index
    @items = Item.all
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    flash[:notice] = "Item name #{item.name} was deleted"
    redirect_to '/items', flash: flash
  end

  private

  def permitted_params
    params.require(:item).permit(:name, :serial, :category, :year, :purchase_price)
  end

end
