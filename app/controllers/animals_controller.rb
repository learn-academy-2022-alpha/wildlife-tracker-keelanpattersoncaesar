class AnimalsController < ApplicationController
    def index # GET REQUEST AKA READ
        animals = Animal.all # shows all animals
        render json: animals
    end

    def show # GET REQUEST AKA READ
        animal = Animal.find(params[:id]) # shows one animal
        render json: animal
    end

    def create # POST AKA CREATE
        animal = Animal.create(animal_params) # creates a new animal
        if animal.valid?
            render json: animal
        else
            render json: animal.errors
        end
    end
      
    def update # makes changes to an animal AKA PUT
        animal = Animal.find(params[:id])
        animal.update(animal_params)
        if animal.valid?
            render json: animal
        else
            render json: animal.errors
        end

    end

    def destroy # smite an animal AKA DELETE
        animal = Animal.find(params[:id])
        if animal.destroy
            render json: animal
        else
            render json: animal.errors
        end
    end

    private 
    def animal_params
        params.require(:animal).permit(:common_name, :latin_name, :kingdom)
    end
      
end



