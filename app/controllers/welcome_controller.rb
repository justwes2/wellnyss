class WelcomeController < ApplicationController
  def index
    @user = current_user
    if current_user.assessments.order(:created_at).last
      @last_assessment = current_user.assessments.order(:created_at).last.created_at.time.to_date
    end
  end
end
