class MemoriesController < ApplicationController

  def index
    @memories = Memory.all
  end

  def show
    @memory = Memory.find(params[:id])
  end

  def new
    @user = current_user
    @memory = Memory.new
  end

  def create
    @memory = Memory.new(memory_params)
    @memory.user = current_user
    @memory.save
    redirect_to user_memories_url
  end

  private
  def memory_params
    params.require(:memory).permit(:narrative)
  end
end
