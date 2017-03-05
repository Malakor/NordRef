class RefereesController < ApplicationController	
	def index
		@referees = Referee.all
		#@clubs = Clubs.all	
	end
	def show
		@referee = Referee.find(params[:id])
	end
	def new
		@referee = Referee.new
	end
	def edit
		@referee = Referee.find(params[:id])
	end
	def create
		
		@referee = Referee.new(referee_param)
		@referee.username = referee_userName
#		@referee.club = Club.where(fullname: :test).first
#@referee.club_id = 4
#		@referee = Referee.new(params[:referee])	
		if @referee.save
			#render plain: params[:referee].inspect
			redirect_to @referee
		else
			render 'new'
			#render plain: params[:referee].inspect
		end
	end
	def update
		@referee = Referee.find(params[:id])
		
		if @referee.update(referee_param)
			redirect_to @referee
		else
			render 'edit'
		end
	end
	def destroy
	end

  private
	def referee_param
		params.require(:referee).permit(:firstname, :lastname, :mail, :club_id, :role, :password)
	end
	def referee_userName
		if Referee.count
			@referee.firstname + "." + @referee.lastname + (Referee.last.id+1).to_s
		else
			@referee.firstname + "." + @referee.lastname
		end
	end
end
