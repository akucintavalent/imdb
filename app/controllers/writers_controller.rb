class WritersController < ApplicationController
  before_action :set_writer, only: %i[ show edit update destroy ]

  # GET /writers or /writers.json
  def index
    @writers = Writer.all
  end

  # GET /writers/1 or /writers/1.json
  def show
  end

  # GET /writers/new
  def new
    @writer = Writer.new
  end

  # GET /writers/1/edit
  def edit
  end

  # POST /writers or /writers.json
  def create
    @writer = Writer.new(writer_params)

    respond_to do |format|
      if @writer.save
        format.html { redirect_to writer_url(@writer), notice: "Writer was successfully created." }
        format.json { render :show, status: :created, location: @writer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @writer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /writers/1 or /writers/1.json
  def update
    respond_to do |format|
      if @writer.update(writer_params)
        format.html { redirect_to writer_url(@writer), notice: "Writer was successfully updated." }
        format.json { render :show, status: :ok, location: @writer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @writer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /writers/1 or /writers/1.json
  def destroy
    @writer.destroy

    respond_to do |format|
      format.html { redirect_to writers_url, notice: "Writer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_writer
      @writer = Writer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def writer_params
      params.require(:writer).permit(:name_id, :title_id)
    end
end
