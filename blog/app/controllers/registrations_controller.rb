class RegistrationsController < ApplicationController
	def index
		# Hier alle anzeigen oder nur alle der Saison?
		@registrations = Registration.all
	end
	def show
		# Hier alle Lizenzen des Refs anzeigen
	end
	def new
		@registration = Registration.new
	end
	def create
		@registration = Registration.new(registration_param)

		@registration.registrationthrough = current_user.id
		if @registration.save
			redirect_to @registration
		else
			render 'new'
		end
	end
	def edit
		@registration = Registration.find(params[:id])
	end
	def update
		@registration = Registration.find(params[:id])
		
		if @registration.update(registration_param)
			redirect_to @registration
		else
			render 'edit'
		end
	end
	def destroy
	end

  private
	def registration_param
		params.require(:registration).permit(:registrationthrough, :registeredref, :course_id)
	end
end
