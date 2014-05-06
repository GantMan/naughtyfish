class AdventureListsController < ApplicationController
  before_action :set_adventure_list, only: [:show, :edit, :update, :destroy]

  # GET /adventure_lists
  # GET /adventure_lists.json
  def index
    @adventure_lists = AdventureList.all
  end

  # GET /adventure_lists/1
  # GET /adventure_lists/1.json
  def show
  end

  # GET /adventure_lists/new
  def new
    @adventure_list = AdventureList.new
  end

  # GET /adventure_lists/1/edit
  def edit
  end

  # POST /adventure_lists
  # POST /adventure_lists.json
  def create
    @adventure_list = AdventureList.new(adventure_list_params)

    respond_to do |format|
      if @adventure_list.save
        format.html { redirect_to @adventure_list, notice: 'Adventure list was successfully created.' }
        format.json { render action: 'show', status: :created, location: @adventure_list }
      else
        format.html { render action: 'new' }
        format.json { render json: @adventure_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adventure_lists/1
  # PATCH/PUT /adventure_lists/1.json
  def update
    respond_to do |format|
      if @adventure_list.update(adventure_list_params)
        format.html { redirect_to @adventure_list, notice: 'Adventure list was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @adventure_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adventure_lists/1
  # DELETE /adventure_lists/1.json
  def destroy
    @adventure_list.destroy
    respond_to do |format|
      format.html { redirect_to adventure_lists_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adventure_list
      @adventure_list = AdventureList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adventure_list_params
      params.require(:adventure_list).permit(:user_id, :action_id, :adventure)
    end
end
