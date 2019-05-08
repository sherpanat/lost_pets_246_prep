class PetsController < ApplicationController
  before_action :pet_params, only: [:create, :update]
  before_action :set_pet, only: [:show, :edit, :update, :destroy]
  before_action :set_species, only: [:new, :edit]

  def index
    @pets = Pet.all
  end

  def show
  end

  def new
    @pet = Pet.new
  end

  def create
    pet = Pet.create(pet_params)
    redirect_to pets_path
  end

  def edit
  end

  def update
    @pet.update(pet_params)
    redirect_to pet_path(@pet)
  end

  def destroy
    @pet.destroy
    redirect_to pets_path
  end

  private

  def set_pet
    @pet = Pet.find(params[:id])
  end

  def set_species
    @species = Pet::SPECIES
  end

  def pet_params
    params.require(:pet).permit(:name, :address, :species, :found_on)
  end
end
