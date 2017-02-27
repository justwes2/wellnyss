class AssessmentsController < ApplicationController

  def index
    @assessments = Assessment.all
  end

  def show
    @assessment = Assessment.find(params[:id])
  end

  def new
    @assessment = Assessment.new
  end

  def create
    @assessment= Assessment.new(assessment_params)
    @assessment.user = current_user
    @assessment.save
    redirect_to user_assessments_url
  end

  private
  def assessment_params
    params.require(:assessment).permit(:score)
  end
end
