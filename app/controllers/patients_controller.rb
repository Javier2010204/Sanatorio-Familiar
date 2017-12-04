class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy, :baja, :alta]
  before_action :set_combo_values, only: [:new, :edit]

  # GET /patients
  # GET /patients.json
 PAGE_SIZE = 10

  def index
    @page = (params[:page] || 0).to_i
    @keywords = params[:keywords]

    search = Search.new(@page, PAGE_SIZE, @keywords)
    @patients, @number_of_pages = search.patients_by_name
  end

  # GET /patients/1
  # GET /patients/1.json
  def show
  end

  # GET /patients/new
  def new
    @patient = Patient.new
  end

  # GET /patients/1/edit
  def edit
  end

  # POST /patients
  # POST /patients.json
  def create
    @patient = Patient.new(patient_params)

    respond_to do |format|
      if @patient.save
        @patient.set_patient_code
        format.html { redirect_to @patient, notice: 'Patient was successfully created.' }
        format.json { render :show, status: :created, location: @patient }
      else
        format.html { render :new }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patients/1
  # PATCH/PUT /patients/1.json
  def update
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to @patient, notice: 'Patient was successfully updated.' }
        format.json { render :show, status: :ok, location: @patient }
      else
        format.html { render :edit }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patients/1
  # DELETE /patients/1.json
  def destroy
    @patient.destroy
    respond_to do |format|
      format.html { redirect_to patients_url, notice: 'Patient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

    def baja
    @patient.deactivated!
    #llevarlo a facturacion
    redirect_to patient_path
  end

  def alta
    @patient.activated!
    #llevarlo a facturacion
    redirect_to patient_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id])
    end

    def set_combo_values
      @rooms = Room.all.order(:name)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_params
      params.require(:patient).permit(:code, :first_name, :last_name, :birthday, :age, :phone, :email, :dpi, :sex, :manager, :nit, :alergies, :annotations, :status, :room_id)
    end
end
