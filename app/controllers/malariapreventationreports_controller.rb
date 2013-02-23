class MalariapreventationreportsController < ApplicationController
layout "malaria"  

# GET /malariapreventationreports
  # GET /malariapreventationreports.json
  def index
    @malariapreventationreport = Malariapreventationreport.new
    @malariapreventationreport.drawPreventionGraph("hello")
@malarialocationreports = Malarialocationreport.new
	@stuff = Malarialocationreport.new
	@locations = Location.find(:all)
	@drop_down_array = Array.new
  end

  # GET /malariapreventationreports/1
  # GET /malariapreventationreports/1.json
  def show
    @malariapreventationreport = Malariapreventationreport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @malariapreventationreport }
    end
  end

  # GET /malariapreventationreports/new
  # GET /malariapreventationreports/new.json
  def new
    @malariapreventationreport = Malariapreventationreport.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @malariapreventationreport }
    end
  end

  # GET /malariapreventationreports/1/edit
  def edit
    @malariapreventationreport = Malariapreventationreport.find(params[:id])
  end

  # POST /malariapreventationreports
  # POST /malariapreventationreports.json
  def create
    @malariapreventationreport = Malariapreventationreport.new(params[:malariapreventationreport])

    respond_to do |format|
      if @malariapreventationreport.save
        format.html { redirect_to @malariapreventationreport, notice: 'Malariapreventationreport was successfully created.' }
        format.json { render json: @malariapreventationreport, status: :created, location: @malariapreventationreport }
      else
        format.html { render action: "new" }
        format.json { render json: @malariapreventationreport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /malariapreventationreports/1
  # PUT /malariapreventationreports/1.json
  def update
    @malariapreventationreport = Malariapreventationreport.find(params[:id])

    respond_to do |format|
      if @malariapreventationreport.update_attributes(params[:malariapreventationreport])
        format.html { redirect_to @malariapreventationreport, notice: 'Malariapreventationreport was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @malariapreventationreport.errors, status: :unprocessable_entity }
      end
    end
  end



  # DELETE /malariapreventationreports/1
  # DELETE /malariapreventationreports/1.json
  def destroy
    @malariapreventationreport = Malariapreventationreport.find(params[:id])
    @malariapreventationreport.destroy

    respond_to do |format|
      format.html { redirect_to malariapreventationreports_url }
      format.json { head :no_content }
    end
  end
end
