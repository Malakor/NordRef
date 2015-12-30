class LeadgamesController < ApplicationController
	def index
		@leadgames = Leadgames.all
	end
	def show
		## einzelne Spielansichten sind eher unnuetz
	end
	def new
		@leadgame = Leadgame.new
	end
	def edit
		@leadgame = Leadgame.find(params[:id])
	end
	def update
		@leadgame = Leadgame.find(params[:id])

		if @leadgame.update(leadgame_param)
			redirect_to @leadgame
		else
			render 'edit'
		end
	end
	def create
		@leadgame = Leadgame.new(leadgame_param)

		if @leadgame.save
			render plain: params[:leadgame].inspect
		else
			render 'new'
		end
	end
	def destroy
	end


  private
	def leadgame_param
		params.require(:leadgame).permit(:season_g, :amount_g, :referee_id)
	end
end
