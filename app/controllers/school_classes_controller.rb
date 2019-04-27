class SchoolClassesController < ApplicationController
  before_action :find_school_class, except: %i[index new create]

  def index
    @school_classes = SchoolClass.all
  end

  def show; end

  def new
    @school_class = SchoolClass.new
  end

  def edit; end

  def create
    @school_class = SchoolClass.new(school_class_params)
    if @school_class.save
      flash[:success] = 'SchoolClass successfully created'
      redirect_to @school_class
    else
      flash[:error] = 'Something went wrong'
      render 'new'
    end
  end

  def update
    if @school_class.update_attributes(school_class_params)
      flash[:success] = 'SchoolClass was successfully updated'
      redirect_to @school_class
    else
      flash[:error] = 'Something went wrong'
      render 'edit'
    end
  end

  def destroy
    if @school_class.destroy
      flash[:success] = 'SchoolClass was successfully deleted'
      redirect_to @school_classes_path
    else
      flash[:error] = 'Something went wrong'
      redirect_to @school_classes_path
    end
  end

  private

  def school_class_params
    params.require(:school_class).permit(:title, :room_number)
  end

  def find_school_class
    @school_class = SchoolClass.find(params[:id])
  end
end
