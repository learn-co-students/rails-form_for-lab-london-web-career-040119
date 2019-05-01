class StudentsController < ApplicationController

  before_action :student_finder, only: [:show, :edit, :update]

  def index
    @students = Student.all
  end

  def show
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)
    redirect_to student_path(@student)
  end

  def edit
  end

  def update
    @student.update(student_params)
    redirect_to student_path(@student)
  end


  private

  def student_params
    params.require(:student).permit!
  end

  def student_finder
    @student = Student.find(params[:id])
  end

end
