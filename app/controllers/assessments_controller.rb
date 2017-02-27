class AssessmentsController < ApplicationController

  def index
    @assessments = Assessment.find(params[:user_id])
  end

  def show
    @assessment = Assessment.find(params[:id])
  end

  def new
    @assessment = Assessment.new
  end

  def create
    @assessment= Assessment.new
    @assessment.save
    redirect_to user_assessments
  end

  private
  def assessment_params
    params.require(:assessment).permit(:score)
  end
end
