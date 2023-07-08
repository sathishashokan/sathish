class BillsController < ApplicationController
    def index
        @bills = Bill.all
    end

    def new
    end

    def create
        employee = Employee.find params[:employee]
        @bills = Bill.create(
            category: params[:category], amount: params[:amount], 
            date_of_submission: Date.today.strftime("%d-%m-%Y"), submitted_by: employee.name, 
            department: employee.department.name
        )
        redirect_to bills_path
    end
end
