class EmployeesController < ApplicationController
  def new
    @employee = Employee.new
  end

  def create
    # puts "hello #{params}" 
    # name = params[:employee][:name]
    # location = params[:employee][:location]
    # status = params[:employee][:status]

    @employee = Employee.new(params.require(:employee).permit(:name, :location, :status))
    @employee.save

    render :show
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
