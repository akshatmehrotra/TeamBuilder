class ClassesController < ApplicationController
  def index
    @classes = Class.all
  end

  def show
    @class = Class.find(params[:id])
  end

  def new
    @class = Class.new
  end

  def create
    @class = Class.new
    @class.name = params[:name]
    @class.instructor_name = params[:instructor_name]
    @class.calendar_id = params[:calendar_id]
    @class.department_id = params[:department_id]
    @class.quarter_id = params[:quarter_id]
    @class.section_id = params[:section_id]
    @class.team_size = params[:team_size]

    if @class.save
      redirect_to "/classes", :notice => "Class created successfully."
    else
      render 'new'
    end
  end

  def edit
    @class = Class.find(params[:id])
  end

  def update
    @class = Class.find(params[:id])

    @class.name = params[:name]
    @class.instructor_name = params[:instructor_name]
    @class.calendar_id = params[:calendar_id]
    @class.department_id = params[:department_id]
    @class.quarter_id = params[:quarter_id]
    @class.section_id = params[:section_id]
    @class.team_size = params[:team_size]

    if @class.save
      redirect_to "/classes", :notice => "Class updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @class = Class.find(params[:id])

    @class.destroy

    redirect_to "/classes", :notice => "Class deleted."
  end
end
