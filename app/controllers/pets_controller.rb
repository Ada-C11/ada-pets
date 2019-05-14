class PetsController < ApplicationController
  def index
    pets = Pet.all
    render status: :ok, json: pets.as_json(only: [:name, :age, :human, :id])
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :age, :human)
  end
end
