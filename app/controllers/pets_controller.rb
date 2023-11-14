class PetsController < ApplicationController

  def index
    @pets = Pet.all
  end

  def show
    # FIND THE RIGHT INSTANCE
    @pet = Pet.find(params[:id])
  end

  def new
    # CREATE THE EMPTY INSTANCE TO BE USED IN THE FORM
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.save

    redirect_to pet_path(@pet) #=> /pets/:id
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    @pet.update(pet_params)

    redirect_to pet_path(@pet) #=> /pets/:id
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy

    redirect_to pets_path, status: :see_other
  end

  private

  # STRONG PARAMS!!!
  def pet_params
    params.require(:pet).permit(:name, :address, :species, :found_on)
  end

end
