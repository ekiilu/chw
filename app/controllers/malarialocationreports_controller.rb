class MalarialocationreportsController < ApplicationController
layout "malaria"  
# GET /malarialocationreports
  # GET /malarialocationreports.json
  def index
	@malarialocationreports = Malarialocationreport.new
	@stuff = Malarialocationreport.new
	@locations = Location.find(:all)
	@drop_down_array = Array.new

	if(defined? params[:location][:id])
		@test = params[:location][:id]
		@year =  params[:date][:year]
		if @test.empty?
			@location_id = 1
			@location_object = Location.find(@location_id)
			@location_name = @location_object.name
		else
			@location_id = @test.to_i
			@location_object = Location.find(@location_id)
			@location_name = @location_object.name
		end 
	else
		#Basically this sets the default location 
		@location_id = 1
		@location_object = Location.find(@location_id)
		@location_name = @location_object.name

	end 

	
  	
	

	@malarialocationreports.drawLocationGraph(@location_name,@location_id,@year)
    	respond_to do |format|
      	format.html # index.html.erb
      	format.json { render json: @malarialocationreports }
    end
  end



  # GET /malarialocationreports/1
  # GET /malarialocationreports/1.json
  def show
    @malarialocationreport = Malarialocationreport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @malarialocationreport }
    end
  end

  def show
    @malarialocationreports = Malarialocationreport.all
drawGraph
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @malarialocationreports }
    end
  end

  # GET /malarialocationreports/1
  # GET /malarialocationreports/1.json
  def show
    @malarialocationreport = Malarialocationreport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @malarialocationreport }
    end
  end


  # GET /malarialocationreports/new
  # GET /malarialocationreports/new.json
  def new
    @malarialocationreport = Malarialocationreport.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @malarialocationreport }
    end
  end

  # GET /malarialocationreports/1/edit
  def edit
    @malarialocationreport = Malarialocationreport.find(params[:id])
  end

  # POST /malarialocationreports
  # POST /malarialocationreports.json
  def create
    @malarialocationreport = Malarialocationreport.new(params[:malarialocationreport])

    respond_to do |format|
      if @malarialocationreport.save
        format.html { redirect_to @malarialocationreport, notice: 'Malarialocationreport was successfully created.' }
        format.json { render json: @malarialocationreport, status: :created, location: @malarialocationreport }
      else
        format.html { render action: "new" }
        format.json { render json: @malarialocationreport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /malarialocationreports/1
  # PUT /malarialocationreports/1.json
  def update
    @malarialocationreport = Malarialocationreport.find(params[:id])

    respond_to do |format|
      if @malarialocationreport.update_attributes(params[:malarialocationreport])
        format.html { redirect_to @malarialocationreport, notice: 'Malarialocationreport was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @malarialocationreport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /malarialocationreports/1
  # DELETE /malarialocationreports/1.json
  def destroy
    @malarialocationreport = Malarialocationreport.find(params[:id])
    @malarialocationreport.destroy

    respond_to do |format|
      format.html { redirect_to malarialocationreports_url }
      format.json { head :no_content }
    end
  end
end
