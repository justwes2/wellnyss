class AssessmentsController < ApplicationController

  def index
    @assessments = Assessment.all
  end

  def show
    @assessment = Assessment.find(params[:id])
  end

  def new
    @user = current_user
    @assessment = Assessment.new
  end

  def create
    @assessment= Assessment.new(assessment_params)
    @assessment.user = current_user
    @assessment.save
    # redirect_to user_assessments_url
    if @assessment.score == 1
      redirect_to crisis_path
    elsif @assessment.score == 2
      redirect_to user_memories_path
      flash[:notice] = ""
    elsif @assessment.score == 3
      redirect_to user_memories_path
      flash[:notice] = ""
    elsif @assessment.score == 4
      redirect_to user_memories_path
      flash[:notice] = ""
    elsif @assessment.score == 5
      redirect_to user_goals_path
      flash[:notice] = "Ok. What would it take to get you to a 6?"
    elsif @assessment.score == 6
      redirect_to user_goals_path
      flash[:notice] = "Ok. What would it take to get you to a 7?"
    elsif @assessment.score == 7
      redirect_to user_goals_path
      flash[:notice] = "Ok. What would it take to get you to an 8?"
    elsif @assessment.score == 8
      redirect_to new_user_memory_path
      flash[:notice] = "That's great. Why don't you record one thing that made you smile today."
    elsif @assessment.score == 9
      redirect_to new_user_memory_path
      flash[:notice] = "That's great. Why don't you record one thing that made you smile today."
    elsif @assessment.score == 10
      redirect_to new_user_memory_path
      flash[:notice] = "That's great. Why don't you record one thing that made you smile today."
    end
  end

  private
  def assessment_params
    params.require(:assessment).permit(:score)
  end
end
