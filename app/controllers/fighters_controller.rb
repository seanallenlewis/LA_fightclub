class FightersController < ApplicationController
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
  end

  def destroy
  end

  def fighter_params
    params.require(:fighter).permit(:name, :email, :password, :password_confirmation)
  end
end
