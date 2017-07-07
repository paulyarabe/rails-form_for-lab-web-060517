class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(user_params)
    redirect_to student_path(@student)
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(user_params)
    redirect_to student_path(@student)
  end

  private

  def user_params
    params.require(:student).permit(:first_name, :last_name)
  end

end
