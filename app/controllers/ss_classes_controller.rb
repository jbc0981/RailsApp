class SsClassesController < ApplicationController
  before_action :set_ss_class, only: [:show, :edit, :update, :destroy]

  # GET /ss_classes
  # GET /ss_classes.json
  def index
    @ss_classes = SsClass.all
  end

  # GET /ss_classes/1
  # GET /ss_classes/1.json
  def show
  end

  # GET /ss_classes/new
  def new
    @ss_class = SsClass.new
  end

  # GET /ss_classes/1/edit
  def edit
  end

  # POST /ss_classes
  # POST /ss_classes.json
  def create
    @ss_class = SsClass.new(ss_class_params)

    respond_to do |format|
      if @ss_class.save
        format.html { redirect_to @ss_class, notice: 'Ss class was successfully created.' }
        format.json { render :show, status: :created, location: @ss_class }
      else
        format.html { render :new }
        format.json { render json: @ss_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ss_classes/1
  # PATCH/PUT /ss_classes/1.json
  def update
    respond_to do |format|
      if @ss_class.update(ss_class_params)
        format.html { redirect_to @ss_class, notice: 'Ss class was successfully updated.' }
        format.json { render :show, status: :ok, location: @ss_class }
      else
        format.html { render :edit }
        format.json { render json: @ss_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ss_classes/1
  # DELETE /ss_classes/1.json
  def destroy
    @ss_class.destroy
    respond_to do |format|
      format.html { redirect_to ss_classes_url, notice: 'Ss class was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ss_class
      @ss_class = SsClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ss_class_params
      params.require(:ss_class).permit(:name, :leader)
    end
end
