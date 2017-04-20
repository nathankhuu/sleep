class EntriesController < ApplicationController
	def new
		@entry = Entry.new
	end

	def create
		@entry = Entry.new
		@entry.day = Date.yesterday
		@entry.sleep_hours = params[:entry][:sleep_hours]
		@entry.bedtime = params[:entry][:bedtime]
		@entry.getuptime = params[:entry][:getuptime]
		@entry.sleep_onset = params[:entry][:sleep_onset]
		@entry.wakefulness = params[:entry][:wakefulness]
		@entry.awakenings = params[:entry][:awakenings]
		@entry.time_awake = params[:entry][:time_awake]
		@entry.caffiene = params[:entry][:caffiene]
		@entry.alcohol = params[:entry][:alcohol]
		@entry.naptime = params[:entry][:naptime]
		@entry.exercise = params[:entry][:exercise]
		@entry.sleepiness = params[:entry][:sleepiness]
		@entry.notes = params[:entry][:notes]
		@entry.save
		redirect_to '/visitors/index'
	end
end