class HivgenderreportsController < ApplicationController
  # GET /hivgenderreports
  # GET /hivgenderreports.json
  layout "hivaid"
  def index
    @hivgenderreports = Hivgenderreport.new
    @hivgenderreports.drawGenderGraph("Hiv Gender Report")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hivgenderreports }
    end
  end

  # GET /hivgenderreports/1
  # GET /hivgenderreports/1.json
  def show
    @hivgenderreport = Hivgenderreport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hivgenderreport }
    end
  end

  # GET /hivgenderreports/new
  # GET /hivgenderreports/new.json
  def new
    @hivgenderreport = Hivgenderreport.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hivgenderreport }
    end
  end

  # GET /hivgenderreports/1/edit
  def edit
    @hivgenderreport = Hivgenderreport.find(params[:id])
  end

  # POST /hivgenderreports
  # POST /hivgenderreports.json
  def create
    @hivgenderreport = Hivgenderreport.new(params[:hivgenderreport])

    respond_to do |format|
      if @hivgenderreport.save
        format.html { redirect_to @hivgenderreport, notice: 'Hivgenderreport was successfully created.' }
        format.json { render json: @hivgenderreport, status: :created, location: @hivgenderreport }
      else
        format.html { render action: "new" }
        format.json { render json: @hivgenderreport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hivgenderreports/1
  # PUT /hivgenderreports/1.json
  def update
    @hivgenderreport = Hivgenderreport.find(params[:id])

    respond_to do |format|
      if @hivgenderreport.update_attributes(params[:hivgenderreport])
        format.html { redirect_to @hivgenderreport, notice: 'Hivgenderreport was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hivgenderreport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hivgenderreports/1
  # DELETE /hivgenderreports/1.json
  def destroy
    @hivgenderreport = Hivgenderreport.find(params[:id])
    @hivgenderreport.destroy

    respond_to do |format|
      format.html { redirect_to hivgenderreports_url }
      format.json { head :no_content }
    end
  end
end
