class LicencesController < ApplicationController
	def index
		# Hier alle anzeigen oder nur alle der Saison?
		@licenses = Licences.all
	end
	def show
		# Hier alle Lizenzen des Refs anzeigen
	end
	def new
		@licence = Licence.new
	end
	def create
		@licence = Licence.new(licence_param)

		if @licence.save
			redirect_to @licence
		else
			render 'new'
		end
	end
	def edit
		@licence = Licence.find(params[:id]
	end
	def update
		@licence = Licence.find(params[:id]
		
		if @licence.update(licence_param)
			redirect_to @licence
		else
			render 'edit'
		end
	end
	def destroy
	end

  private
	def licence_param
		params.require(:licence).permit(:licence_no, :season_l, :licence_type, :referee_id)
	end
end
