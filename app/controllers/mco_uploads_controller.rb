class McoUploadsController < ApplicationController
  before_action :set_mco_upload, only: [:show, :edit, :update, :destroy]

  # GET /mco_uploads
  # GET /mco_uploads.json
  def index
    @mco_uploads = McoUpload.all
  end

  # GET /mco_uploads/1
  # GET /mco_uploads/1.json
  def show
  end

  # GET /mco_uploads/new
  def new
    @mco_upload = McoUpload.new
  end

  # GET /mco_uploads/1/edit
  def edit
  end

  # POST /mco_uploads
  # POST /mco_uploads.json
  def create
    @mco_upload = McoUpload.new(mco_upload_params)

    respond_to do |format|
      if @mco_upload.save
        format.html { redirect_to @mco_upload, notice: 'Mco upload was successfully created.' }
        format.json { render :show, status: :created, location: @mco_upload }
      else
        format.html { render :new }
        format.json { render json: @mco_upload.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mco_uploads/1
  # PATCH/PUT /mco_uploads/1.json
  def update
    respond_to do |format|
      if @mco_upload.update(mco_upload_params)
        format.html { redirect_to @mco_upload, notice: 'Mco upload was successfully updated.' }
        format.json { render :show, status: :ok, location: @mco_upload }
      else
        format.html { render :edit }
        format.json { render json: @mco_upload.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mco_uploads/1
  # DELETE /mco_uploads/1.json
  def destroy
    @mco_upload.destroy
    respond_to do |format|
      format.html { redirect_to mco_uploads_url, notice: 'Mco upload was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mco_upload
      @mco_upload = McoUpload.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mco_upload_params
      params.require(:mco_upload).permit(:first_name, :last_name, :dob, :medicaid_id, :alert)
    end
end
