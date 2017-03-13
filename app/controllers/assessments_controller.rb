class AssessmentsController < ApplicationController

  def index
    @assessments = Assessment.all.order(updated_at: :desc)
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

    if @assessment.score == 1
      redirect_to crisis_path
    # AM: The next three options all look identical (except for the score). You could use `<` and `>` in a single conditional statement to account for them all.
    elsif @assessment.score == 2
      redirect_to user_memories_path
      flash[:notice] = "It sounds like you're feeling down right now. Here are some positive memories to remind you that it can't rain all the time."
    elsif @assessment.score == 3
      redirect_to user_memories_path
      flash[:notice] = "It sounds like you're feeling down right now. Here are some positive memories to remind you that it can't rain all the time."
    elsif @assessment.score == 4
      redirect_to user_memories_path
      flash[:notice] = "It sounds like you're feeling down right now. Here are some positive memories to remind you that it can't rain all the time."
    # AM: Ditto my earlier comment with these next three condtions. You couls also flash the correct score by replacing the hard-coded number with `@assessment.score`
    elsif @assessment.score == 5
      redirect_to user_goals_path
      flash[:notice] = "Ok. What would it take to get you to a 6?"
    elsif @assessment.score == 6
      redirect_to user_goals_path
      flash[:notice] = "Ok. What would it take to get you to a 7?"
    elsif @assessment.score == 7
      redirect_to user_goals_path
      flash[:notice] = "Ok. What would it take to get you to an 8?"
    # AM: Ditto my first conditional-related comment for the next three options
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
