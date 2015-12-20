class RefereesController < ApplicationController	
	def index
		@referees = Referee.all	
	end
	def show
		@referee = Referee.find(params[:id])
	end
	def new
	end
	def edit
	end
	def create
		@referee = Referee.new(referee_param)
#		@referee = Referee.new(params[:referee])	
		if @referee.save
			redirect_to @referee
		else
			render plain: params[:referee].inspect
		end
	end
	def update
	end
	def destroy
	end

  private
	def referee_param
		params.require(:referee).permit(:firstname, :lastname, :mail)
	end
end
