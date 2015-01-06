class SelfiesController < ApplicationController
	def index
		@selfies = Selfie.all
	end

	def show
		@selfie = Selfie.find(params[:id])
	end

	def new
		@selfie = Selfie.new
	end

	def edit
		@selfie = Selfie.find(params[:id])
	end

	def create
		@selfie = Selfie.new(task_params)
		if @task.save
			redirect_to '/'
		else
			render :new
		end
	end

	def selfie
		@selfie = Selfie.find(params[:id])
		if @selfie.update(task_params)
			redirect_to '/'
		else
			redirect_to edit_selfie_path(@selfie)
		end 
	end

end 