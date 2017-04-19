class EntriesController < ApplicationController
	def new
		@entry = Entry.new
	end

	def create
		@entry = Entry.new
		@entry.day = params[:entry][:day]
		@entry.sleep_hours = params[:entry][:sleep_hours]
		@entry.caffiene = params[:entry][:caffiene]
		@entry.save
		redirect_to '/visitors/index'
	end
end