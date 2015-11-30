class GuardiansController < ApplicationController
before_action :set_guardian, only: [:show, :edit, :update, :destroy]

  # GET /guardians
  def index
    @guardian = Guardian.all
  end

  # GET /guardians/1
  def show
  end

  # GET /guardians/new
  def new
    @guardian = Guardian.new
  end

  # GET /guardians/1/edit
  def edit
  end

  # POST /guardians
  def create
    @guardian = Guardian.new(guardian_params)

    if @guardian.save
        student = Student.find(params["student"]["guardian"])
        @guardian.student << student
        redirect_to @guardian, notice: 'Guardian was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /guardians/1
  def update
    if @guardian.update(guardian_params)
      student = Student.find(params["student"]["guardian_id"])
      @guardian.student << student
        redirect_to @guardian, notice: 'Guardian information was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /guardians/1
  def destroy
    @guardian.destroy
    redirect_to @guardians, notice: 'Student was successfully deleted.'
  end

  private
  def set_guardian
    @guardian = Guardian.find(params[:id])
  end

  def guardian_params
     params.require(:guardian).permit(:first_name, :last_name, :email)
  end
end

