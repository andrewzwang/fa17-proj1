class PokemonsController < ApplicationController

  def capture
    @id = params[:id]
    @trainer_id = current_trainer.id
    redirect_to '/'
  end

  def damage
    @health = @health - 10
    redirect_to '/trainers/:id(.:format)'
    if @health <= 0
      @pokemon = Pokemon.find(params[:pokemon_id])
      @pokemon.destroy
    end
  end

  def show
    if @pokemon.valid?
      @trainer_id = current_trainer.id
      redirect_to '/trainers/:id(.:format)'
    else
      flash[:error] = @pokemon.errors.full_messages.to_sentence
    end
  end

end
