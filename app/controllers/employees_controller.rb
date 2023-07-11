class EmployeesController < ApplicationController
  def home
  end

  def index
    @employees = Employee.all
  end

  def new
  end

  def create
    employee = Employee.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], designation: params[:designation], department_id: params[:department])
    redirect_to employees_path
  end

  def show
    begin
      @employee = Employee.find params[:id]
    rescue => exception
      @employee = nil
    end
  end

  def edit
    @employee = Employee.find params[:id]
  end

  def update
    @employee = Employee.find params[:id]
    if @employee.update(employee_params)
      redirect_to employees_path
    else
      render :edit
    end
  end

  def destroy
    @employee = Employee.find params[:id]
    @employee.delete
    redirect_to employees_path
  end

  private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :email, :department_id, :designation)
  end
end
