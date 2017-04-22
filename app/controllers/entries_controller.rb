class EntriesController < ApplicationController
	def new
		@entry = Entry.new
	end

	def create
		if params[:entry][:day].blank?
			redirect_to '/users/index'
			return
		end
		lookup = Entry.where(day: params[:entry][:day])
		if lookup.length > 0
			@entry = lookup[0] 
		else
			@entry = Entry.new
			@entry.day = params[:entry][:day]
		end

		if !params[:entry][:sleep_hours].blank?
			@entry.sleep_hours = params[:entry][:sleep_hours]
		end

		if !params[:entry][:bedtime].blank?
			@entry.bedtime = params[:entry][:bedtime]
		end

		if !params[:entry][:getuptime].blank?
			@entry.getuptime = params[:entry][:getuptime]
		end

		if !params[:entry][:sleep_onset].blank?
			@entry.sleep_onset = params[:entry][:sleep_onset]
		end

		if !params[:entry][:wakefulness].blank?
			@entry.wakefulness = params[:entry][:wakefulness]
		end

		if !params[:entry][:awakenings].blank?
			@entry.awakenings = params[:entry][:awakenings]
		end

		if !params[:entry][:time_awake].blank?
			@entry.time_awake = params[:entry][:time_awake]
		end

		if !params[:entry][:caffiene].blank?
			@entry.caffiene = params[:entry][:caffiene]
		end

		if !params[:entry][:alcohol].blank?
			@entry.alcohol = params[:entry][:alcohol]
		end

		if !params[:entry][:naptime].blank?
			@entry.naptime = params[:entry][:naptime]
		end

		if !params[:entry][:exercise].blank?
			@entry.exercise = params[:entry][:exercise]
		end

		if !params[:entry][:sleepiness].blank?
			@entry.sleepiness = params[:entry][:sleepiness]
		end

		if !params[:entry][:notes].blank?
			@entry.notes = params[:entry][:notes]
		end
		@entry.save
		redirect_to '/users/index'
	end

end