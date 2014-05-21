class EnrolmentsController < ApplicationController
  def index
    @enrolments = Enrolment.all
  end

  def show
    @enrolment = Enrolment.find(params[:id])
  end

  def new
    @enrolment = Enrolment.new
  end

  def create
    @enrolment = Enrolment.new
    @enrolment.class_id = params[:class_id]
    @enrolment.student_id = params[:student_id]

    if @enrolment.save
      redirect_to "/enrolments", :notice => "Enrolment created successfully."
    else
      render 'new'
    end
  end

  def edit
    @enrolment = Enrolment.find(params[:id])
  end

  def update
    @enrolment = Enrolment.find(params[:id])

    @enrolment.class_id = params[:class_id]
    @enrolment.student_id = params[:student_id]

    if @enrolment.save
      redirect_to "/enrolments", :notice => "Enrolment updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @enrolment = Enrolment.find(params[:id])

    @enrolment.destroy

    redirect_to "/enrolments", :notice => "Enrolment deleted."
  end
end
