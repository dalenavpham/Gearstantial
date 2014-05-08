class ItemsController < ApplicationController
  before_filter :find_item, :only => [:show, :edit, :update, :destroy]
  
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(permitted_params)

    if @item.save
      redirect_to items_path, notice: "Item was created with id # #{@item.id}"
    else
      render :new 
    end
  end

  def show
  end

  def edit
  end

  def update
    @item.update_attributes(permitted_params)

    flash[:notice] = "Item was updated with id # #{@item.id}"
    redirect_to items_path, flash: flash
  end

  def index
    @items = Item.all
    @employees = Employee.all
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    flash[:notice] = "Item name #{@item.name} was deleted"
    redirect_to items_path, flash: flash
  end

  private

  def permitted_params
    params.require(:item).permit(:name, :serial, :year, :location, :purchase_date, :purchase_price, :notes, :employee_id)
  end

  def find_item
    #binding.pry
    @item = Item.find(params[:id])
  end


end
