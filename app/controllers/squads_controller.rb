class SquadsController < ApplicationController
	respond_to :json

	def index
		@squads = Squad.all

		respond_with @squads
	end

	def show
		@squad = Squad.find(params[:id])

		respond_with @squad
	end

	def new
		@squad = Squad.new

		respond_with @squad
	end

	def create
		@squad = Squad.new(param[:squad])

		if @squad.save
			respond_with @squad
		else
			render json: { errors: @character.errors.full_messages }
		end
	end

	def edit
		@squad = Squad.find(params[:id])

		respond_with @squad
	end

	def update
		@squad = Squad.find(params[:id])

		if @squad.update_attributes(params[:squad])
			respond_with @squad
		else
			render json: { errors: @character.errors.full_messages }
		end
	end

	def destroy
		@squad = Squad.find(params[:id])
		@squad.destroy

		respond_with @squad
	end
end
