class GoalsController < ApplicationController

  def index
    @goals = Goal.all
  end

  def show
    @goal = Goal.find(params[:id])
  end

  def edit
    @user = current_user
    @goal = Goal.find(params[:id])
  end

  def new
    @user = current_user
    @goal = Goal.new
  end

  def create
    @goal = Goal.new(goal_params)
    @goal.user = current_user
    @goal.save
    redirect_to user_goals_url
  end

  def update
    @goal = Goal.find(params[:id])
    @goal.update(goal_params)
    redirect_to @goal
  end

  def destroy
    @goal = Goal.find(params[:id])
    @goal.destroy
    redirect_to user_goals_path
  end

  private
  def goal_params
    params.require(:goal).permit(:goal_string)
  end
end
