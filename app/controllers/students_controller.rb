class StudentsController < ApplicationController

	def index
		@students = Student.all
	end

	def show
		@student = Student.find(params[:id])
	end

	def edit
		@student = Student.find(params[:id])

	end

	def update
		@student = Student.find(params[:id])
		@student.name = i_params[:name]
		@student.age = i_params[:age]
		@student.major = i_params[:major]

		if @student.valid?
			@student.update(i_params)
			redirect_to student_path(@student)
		else
			flash[:errors]= @student.errors.full_messages
            redirect_to edit_student_path
		end
	end

	def destroy
		@student = Student.find(params[:id])
		@student.destroy
		redirect_to students_path
	end

	def create
		@student = Student.new(i_params)
		if @student.valid?
			@student.save
			redirect_to student_path(@student)
		else
			flash[:errors]= @student.errors.full_messages
            redirect_to new_student_path
		end
	end

	def new
		@student = Student.new
	end

	def i_params
		params.require(:student).permit(:name, :age, :instructor_id, :major)
	end
end
