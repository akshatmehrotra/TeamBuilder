class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new
    @team.name = params[:name]
    @team.class_id = params[:class_id]

    if @team.save
      redirect_to "/teams", :notice => "Team created successfully."
    else
      render 'new'
    end
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])

    @team.name = params[:name]
    @team.class_id = params[:class_id]

    if @team.save
      redirect_to "/teams", :notice => "Team updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @team = Team.find(params[:id])

    @team.destroy

    redirect_to "/teams", :notice => "Team deleted."
  end
end
