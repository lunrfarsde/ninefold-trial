class TrialModelsController < ApplicationController
  before_action :set_trial_model, only: [:show, :edit, :update, :destroy]

  # GET /trial_models
  # GET /trial_models.json
  def index
    @trial_models = TrialModel.all
  end

  # GET /trial_models/1
  # GET /trial_models/1.json
  def show
  end

  # GET /trial_models/new
  def new
    @trial_model = TrialModel.new
  end

  # GET /trial_models/1/edit
  def edit
  end

  # POST /trial_models
  # POST /trial_models.json
  def create
    @trial_model = TrialModel.new(trial_model_params)

    respond_to do |format|
      if @trial_model.save
        format.html { redirect_to @trial_model, notice: 'Trial model was successfully created.' }
        format.json { render :show, status: :created, location: @trial_model }
      else
        format.html { render :new }
        format.json { render json: @trial_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trial_models/1
  # PATCH/PUT /trial_models/1.json
  def update
    respond_to do |format|
      if @trial_model.update(trial_model_params)
        format.html { redirect_to @trial_model, notice: 'Trial model was successfully updated.' }
        format.json { render :show, status: :ok, location: @trial_model }
      else
        format.html { render :edit }
        format.json { render json: @trial_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trial_models/1
  # DELETE /trial_models/1.json
  def destroy
    @trial_model.destroy
    respond_to do |format|
      format.html { redirect_to trial_models_url, notice: 'Trial model was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trial_model
      @trial_model = TrialModel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trial_model_params
      params.require(:trial_model).permit(:trial_attribute)
    end
end
