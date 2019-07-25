class InstructorsController < ApplicationController

	def index
		@instructors = Instructor.all
	end

	def show
		@instructor = Instructor.find(params[:id])
		@students = @instructor.students
	end

	def edit
		@instructor = Instructor.find(params[:id])

	end

	def update
		@instructor = Instructor.find(params[:id])
		@instructor.name = i_params[:name]
		if @instructor.valid?
			@instructor.update(i_params)
			redirect_to instructor_path(@instructor)
		else
			flash[:errors]= @instructor.errors.full_messages
            redirect_to edit_instructor_path
		end
	end

	def destroy
		@instructor = Instructor.find(params[:id])
		@instructor.destroy
		redirect_to instructors_path
	end

	def create
		@instructor = Instructor.new(i_params)
		if @instructor.valid?
			@instructor.save
			redirect_to instructor_path(@instructor)
		else
			flash[:errors]= @instructor.errors.full_messages
            redirect_to new_instructor_path
		end
	end

	def new
		@instructor = Instructor.new
	end

	def i_params
		params.require(:instructor).permit(:name)
	end
end
