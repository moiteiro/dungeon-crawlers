class DungeonsController < ApplicationController
  respond_to :json
  
  def index
    @dungeons = Dungeon.all
    
    respond_with @dungeons
  end
  
  def show
    @dungeon = Dungeon.find(params[:id])
    
    respond_with @dungeon
  end
  
  def new
    @dungeon = Dungeon.new
    
    respond_with @dungeon
  end
  
  def create
    @dungeon = Dungeon.new(params[:dungeon])
    
    if @dungeon.save
      respond_with @dungeon
    else
      render json: { errors: @dungeon.errors.full_messages }
    end
  end
  
  def edit
    @dungeon = Dungeon.new(params[:id])
  end
  
  def update
    @dungeon = Dungeon.find(params[:id])
    
    if @dungeon.update_attributes(params[:dungeon])
      respond_with @dungeon
    else
      render json: { errors: @dungeon.errors.full_messages }
    end
  end
  
  def destroy
    @dungeon = Dungeon.find(params[:id])
    @dungeon.destroy
    
    respond_with @dungeon
  end
end
