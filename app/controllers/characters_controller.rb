class CharactersController < ApplicationController
  respond_to :json
  
  def index
    @characters = Character.all
    
    respond_with @characters
  end
  
  def show
    @character = Character.find(params[:id])
    
    respond_with @character
  end
  
  def new
    @character = Character.new
    
    respond_with @character
  end
  
  def create
    @character = Character.new(params[:character])
    
    if @character.save
      respond_with @character
    else
      render json: { errors: @character.errors.full_messages }
    end
  end
  
  def edit
    @character = Character.find(params[:id])
    
    respond_with @character
  end
  
  def update
    @character = Character.find(params[:id])
    
    if @character.update_attributes(params[:character])
      respond_with @character
    else
      render json: { errors: @character.errors.full_messages }
    end
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    
    respond_with @character
  end
end
