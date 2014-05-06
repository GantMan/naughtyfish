class FishBowlsController < ApplicationController
  before_action :set_fish_bowl, only: [:show, :edit, :update, :destroy]

  # GET /fish_bowls
  # GET /fish_bowls.json
  def index
    @fish_bowls = FishBowl.all
  end

  # GET /fish_bowls/1
  # GET /fish_bowls/1.json
  def show
  end

  # GET /fish_bowls/new
  def new
    @fish_bowl = FishBowl.new
  end

  # GET /fish_bowls/1/edit
  def edit
  end

  # POST /fish_bowls
  # POST /fish_bowls.json
  def create
    @fish_bowl = FishBowl.new(fish_bowl_params)

    respond_to do |format|
      if @fish_bowl.save
        format.html { redirect_to @fish_bowl, notice: 'Fish bowl was successfully created.' }
        format.json { render action: 'show', status: :created, location: @fish_bowl }
      else
        format.html { render action: 'new' }
        format.json { render json: @fish_bowl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fish_bowls/1
  # PATCH/PUT /fish_bowls/1.json
  def update
    respond_to do |format|
      if @fish_bowl.update(fish_bowl_params)
        format.html { redirect_to @fish_bowl, notice: 'Fish bowl was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @fish_bowl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fish_bowls/1
  # DELETE /fish_bowls/1.json
  def destroy
    @fish_bowl.destroy
    respond_to do |format|
      format.html { redirect_to fish_bowls_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fish_bowl
      @fish_bowl = FishBowl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fish_bowl_params
      params[:fish_bowl]
    end
end
