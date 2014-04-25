class MaterialsController < ApplicationController
  def new
  	@material = Material.new
    @mtype = Mtype.all
  end

  def create
  	@material = Material.new(material_params)
  	if @material.save
  		redirect_to material_path(@material)
  	else
  		render :new
  	end
  end

  def index
  	@materials = Material.all
  end

  def edit
  	@material = Material.find(params[:id])
  end

  def update
  	
  end

  def show
  	@material = Material.find(params[:id])
  end

private

  def material_params
  	params.require(:material).permit(:name, :mtype_id, :available)
  end

end
