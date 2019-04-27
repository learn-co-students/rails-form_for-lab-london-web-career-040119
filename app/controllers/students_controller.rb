class StudentsController < ApplicationController
  before_action :find_student, except: %i[index new create]

  def index
    @students = Student.all
  end

  def show; end

  def new
    @student = Student.new
  end

  def edit; end

  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:success] = 'Student successfully created'
      redirect_to @student
    else
      flash[:error] = 'Something went wrong'
      render 'new'
    end
  end

  def update
    if @student.update_attributes(student_params)
      flash[:success] = 'Student was successfully updated'
      redirect_to @student
    else
      flash[:error] = 'Something went wrong'
      render 'edit'
    end
  end

  def destroy
    if @student.destroy
      flash[:success] = 'Student was successfully deleted'
      redirect_to @students_path
    else
      flash[:error] = 'Something went wrong'
      redirect_to @students_path
    end
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end

  def find_student
    @student = Student.find(params[:id])
  end
end
