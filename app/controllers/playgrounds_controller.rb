class PlaygroundsController < ApplicationController
  before_action :set_playground, only: %i[ show edit update destroy ]

  # GET /playgrounds or /playgrounds.json
  def index
    @playgrounds = Playground.all
  end

  # GET /playgrounds/1 or /playgrounds/1.json
  def show
  end

  # GET /playgrounds/new
  def new
    @playground = Playground.new
  end

  # GET /playgrounds/1/edit
  def edit
  end

  # POST /playgrounds or /playgrounds.json
  def create
    @playground = Playground.new(playground_params)

    respond_to do |format|
      if @playground.save
        format.html { redirect_to @playground, notice: "Playground was successfully created." }
        format.json { render :show, status: :created, location: @playground }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @playground.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /playgrounds/1 or /playgrounds/1.json
  def update
    respond_to do |format|
      if @playground.update(playground_params)
        format.html { redirect_to @playground, notice: "Playground was successfully updated." }
        format.json { render :show, status: :ok, location: @playground }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @playground.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /playgrounds/1 or /playgrounds/1.json
  def destroy
    @playground.destroy
    respond_to do |format|
      format.html { redirect_to playgrounds_url, notice: "Playground was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_playground
      @playground = Playground.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def playground_params
      params.require(:playground).permit(:name, :phone, :email, :twitter)
    end
end
