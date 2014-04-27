class DrinksController < ApplicationController
  before_action :login_required, :only => [:new, :create, :edit, :update, :destroy]
  def index
    @drinks = Drink.all
  end

  def show
    @drink = Drink.find(params[:id])
    @materials = @drink.materials.all
  end

  def edit
  end

  def update
    
  end

  def new
    @drink = Drink.new
    @base = Mtype.find(1).materials
    @syrup = Mtype.find(2).materials
    @additive = Mtype.find(3).materials
  end

  def create
    @drink = current_user.drinks.build(drink_params)
    if @drink.save

      redirect_to drinks_path
    else
      render :new
    end
  end

  def destroy
    
  end


private

  def drink_params
    params.require(:drink).permit(:name, :way, :description, :user_id, material_ids:[])    
  end

end
