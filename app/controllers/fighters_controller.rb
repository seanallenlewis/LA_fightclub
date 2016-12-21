class FightersController < ApplicationController
  def index
    @fighters = Fighter.all
  end

  def show
  end

  def new
    @fighter = Fighter.new
  end

  def create
    @fighter = Fighter.new(fighter_params)
    if @fighter.save
      redirect_to fighters_path
    else
      redirect_to new_fighters_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def fighter_params
    params.require(:fighter).permit(:name, :email, :password, :password_confirmation)
  end
end
