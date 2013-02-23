class TbdotreportsController < ApplicationController
  layout "tb"

  # GET /tbdotreports
  # GET /tbdotreports.json
  def index
    @tbdotreports = Tbdotreport.new
    @tbdotreports.drawDotsGraph("work")
  end

  # GET /tbdotreports/1
  # GET /tbdotreports/1.json
  def show
    @tbdotreport = Tbdotreport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tbdotreport }
    end
  end

  # GET /tbdotreports/new
  # GET /tbdotreports/new.json
  def new
    @tbdotreport = Tbdotreport.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tbdotreport }
    end
  end

  # GET /tbdotreports/1/edit
  def edit
    @tbdotreport = Tbdotreport.find(params[:id])
  end

  # POST /tbdotreports
  # POST /tbdotreports.json
  def create
    @tbdotreport = Tbdotreport.new(params[:tbdotreport])

    respond_to do |format|
      if @tbdotreport.save
        format.html { redirect_to @tbdotreport, notice: 'Tbdotreport was successfully created.' }
        format.json { render json: @tbdotreport, status: :created, location: @tbdotreport }
      else
        format.html { render action: "new" }
        format.json { render json: @tbdotreport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tbdotreports/1
  # PUT /tbdotreports/1.json
  def update
    @tbdotreport = Tbdotreport.find(params[:id])

    respond_to do |format|
      if @tbdotreport.update_attributes(params[:tbdotreport])
        format.html { redirect_to @tbdotreport, notice: 'Tbdotreport was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tbdotreport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tbdotreports/1
  # DELETE /tbdotreports/1.json
  def destroy
    @tbdotreport = Tbdotreport.find(params[:id])
    @tbdotreport.destroy

    respond_to do |format|
      format.html { redirect_to tbdotreports_url }
      format.json { head :no_content }
    end
  end
end
