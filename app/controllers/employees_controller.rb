class EmployeesController < ApplicationController
  before_filter :find_employee, :only => [:show, :edit, :update, :destroy]
  def new
    @employee = Employee.new
    @locations = ["Seattle HQ", "Seattle South", "San Francisco"]
  end

  def create
    # puts "hello #{params}" 
    # name = params[:employee][:name]
    # location = params[:employee][:location]
    # status = params[:employee][:status]

    @employee = Employee.new(permitted_params)
    @employee.save

    #redirect_to items_path
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def edit
  end

  def update
    @employee.update_attributes(permitted_params)
    @employee.save

    #redirect_to employees_path, flash: flash
  end

  def index
    #redirect_to items_path, flash: flash
    @employee = Employee.all
  end

  def destroy
    employee = Employee.find(params[:id])
    employee.destroy
    flash[:notice] = "Name: #{@employee.name} was deleted"

    redirect_to items_path, flash: flash
  end

  def permitted_params
    params.require(:employee).permit(:name, :location, :status)
  end

def find_employee
    #binding.pry
    @employee = Employee.find(params[:id])
  end
end
