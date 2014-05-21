class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new
    @student.name = params[:name]
    @student.email = params[:email]
    @student.program_id = params[:program_id]

    if @student.save
      redirect_to "/students", :notice => "Student created successfully."
    else
      render 'new'
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])

    @student.name = params[:name]
    @student.email = params[:email]
    @student.program_id = params[:program_id]

    if @student.save
      redirect_to "/students", :notice => "Student updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @student = Student.find(params[:id])

    @student.destroy

    redirect_to "/students", :notice => "Student deleted."
  end
end
