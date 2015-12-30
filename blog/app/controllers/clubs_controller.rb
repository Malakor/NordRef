class ClubsController < ApplicationController
def index
		@clubs = Club.all	
	end
	def edit
	end
	def create
		@club = Club.new(club_param)
#		@referee = Referee.new(params[:referee])	
		if @club.save
			redirect_to clubs_path
		else
			render plain: params[:club].inspect
		end
	end
	def update
	end
	def destroy
		@club = Club.find(params[:id])
		@club.destroy
		redirect_to_referees_path
	end

  private
	def club_param
		params.require(:club).permit(:fullname, :shortform, :regionalassociation)
	end
end
