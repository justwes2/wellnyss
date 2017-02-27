class WelcomeController < ApplicationController
  def index
    @user = current_user
    @last_assesment = Assessment.order("created_at").last.created_at.time.to_date
  end
end
