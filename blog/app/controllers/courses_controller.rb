class CoursesController < ApplicationController
	def index
		@courses = Course.all
	end
	def show
		@course = Course.find(params[:id])
	end
	def new
		@course = Course.new
	end
	def edit
		@course = Course.find(params[:id])
	end
	def create
		@course = Course.new(course_param)
#		@course.club = Club.where(fullname: :test).first
#@referee.club_id = 4
#		@course = Course.new(params[:referee])	
		if @course.save
			#render plain: params[:referee].inspect
			redirect_to @course
		else
			render 'new'
			#render plain: params[:referee].inspect
		end
	end
	def update
		@course = Course.find(params[:id])
		#DIES IST EIN TESTKOMMENTAR
		if @course.update(course_param)
			redirect_to @course
		else
			render 'edit'
		end
	end
	def destroy
	end

  private
	def course_param
		params.require(:course).permit(:course_name, :location_string, :course_type, :mistakesallowed_L1, :mistakesallowed_L2, :mistakesallowed_LJ, :capacity)
	end
end
