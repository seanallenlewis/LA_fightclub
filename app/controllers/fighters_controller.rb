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
      flash[:notice] = "saved sucessfull"
      redirect_to fighter_path(@fighter)
    else
      flash[:notice] = "Error"
      redirect_to new_fighters_path
    end
  end

  def edit
    @fighter = Fighter.find(params[:id])
  end

  def update
    @fighter = Fighter.find(params[:id])
    if @fighter.update_attributes(fighter_params)
    else
      redirect_to edit_fighter_path
    end
  end

  def destroy
  end

  def fighter_params
    params.require(:fighter).permit(:name, :email, :password, :password_confirmation)
  end
end
