class HumanoidsController < ApplicationController
  before_action :set_humanoid, only: [:show, :edit, :update, :destroy]

  # GET /humanoids
  # GET /humanoids.json
  def index
    @humanoids = Humanoid.all
  end

  # GET /humanoids/1
  # GET /humanoids/1.json
  def show
  end

  # GET /humanoids/new
  def new
    @humanoid = Humanoid.new
  end

  # GET /humanoids/1/edit
  def edit
  end

  # POST /humanoids
  # POST /humanoids.json
  def create
    @humanoid = Humanoid.new(humanoid_params)

    respond_to do |format|
      if @humanoid.save
        format.html { redirect_to @humanoid, notice: 'Humanoid was successfully created.' }
        format.json { render action: 'show', status: :created, location: @humanoid }
      else
        format.html { render action: 'new' }
        format.json { render json: @humanoid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /humanoids/1
  # PATCH/PUT /humanoids/1.json
  def update
    respond_to do |format|
      if @humanoid.update(humanoid_params)
        format.html { redirect_to @humanoid, notice: 'Humanoid was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @humanoid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /humanoids/1
  # DELETE /humanoids/1.json
  def destroy
    @humanoid.destroy
    respond_to do |format|
      format.html { redirect_to humanoids_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_humanoid
      @humanoid = Humanoid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def humanoid_params
      params[:humanoid]
    end
end
