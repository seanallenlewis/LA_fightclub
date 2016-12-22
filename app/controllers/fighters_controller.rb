class FightersController < ApplicationController

  before_action :authorize, only: [:show]

  def index
    @fighters = Fighter.all

  end

  def show
    @fighter = Fighter.find(params[:id])
    @date = @fighter.created_at
  end

  def new
    @fighter = Fighter.new
  end

  def create
    @fighter = Fighter.new(fighter_params)
    if @fighter.save
      redirect_to fighter_path(@fighter)
    else
      redirect_to new_fighters_path
    end
  end

  def edit
    @fighter = Fighter.find(params[:id])
  end

  def update
    @fighter = Fighter.find(params[:id])
    if @fighter.update_attributes(fighter_params) and redirect_to fighter_path(@fighter)
    else
      redirect_to edit_fighter_path
    end
  end

  def destroy
    Fighter.find(params[:id]).destroy
    flash[:success] = "Profile deleted"
    redirect_to fighters_path
  end

  def fighter_params
    params.require(:fighter).permit(:name, :email, :password, :age, :weight, :style, :location, :password_confirmation )
  end
end
