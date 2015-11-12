class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
  end

  def new
    @student = Student.new
  end

  def edit
  end

  def create
    @student = Student.new(student_params)

    if @student.save
        redirect_to @student
    else
      render :new
    end
  end

  def update
    if @student.update(student_params)
        redirect_to @student
    else
      render :edit
    end
  end

  def destroy
    @student.destroy
    render :index
  end

  private
  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end

end
