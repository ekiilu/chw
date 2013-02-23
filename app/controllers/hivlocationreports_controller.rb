class HivlocationreportsController < ApplicationController
  # GET /hivlocationreports
  # GET /hivlocationreports.json
layout "hivaid"
  def index
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

    @hivlocationreports = Hivlocationreport.new
    @hivlocationreports.drawLocationGraph(@location_name,@location_id,@year)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hivlocationreports }
    end
  end

  # GET /hivlocationreports/1
  # GET /hivlocationreports/1.json
  def show
    @hivlocationreport = Hivlocationreport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hivlocationreport }
    end
  end

  # GET /hivlocationreports/new
  # GET /hivlocationreports/new.json
  def new
    @hivlocationreport = Hivlocationreport.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hivlocationreport }
    end
  end

  # GET /hivlocationreports/1/edit
  def edit
    @hivlocationreport = Hivlocationreport.find(params[:id])
  end

  # POST /hivlocationreports
  # POST /hivlocationreports.json
  def create
    @hivlocationreport = Hivlocationreport.new(params[:hivlocationreport])

    respond_to do |format|
      if @hivlocationreport.save
        format.html { redirect_to @hivlocationreport, notice: 'Hivlocationreport was successfully created.' }
        format.json { render json: @hivlocationreport, status: :created, location: @hivlocationreport }
      else
        format.html { render action: "new" }
        format.json { render json: @hivlocationreport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hivlocationreports/1
  # PUT /hivlocationreports/1.json
  def update
    @hivlocationreport = Hivlocationreport.find(params[:id])

    respond_to do |format|
      if @hivlocationreport.update_attributes(params[:hivlocationreport])
        format.html { redirect_to @hivlocationreport, notice: 'Hivlocationreport was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hivlocationreport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hivlocationreports/1
  # DELETE /hivlocationreports/1.json
  def destroy
    @hivlocationreport = Hivlocationreport.find(params[:id])
    @hivlocationreport.destroy

    respond_to do |format|
      format.html { redirect_to hivlocationreports_url }
      format.json { head :no_content }
    end
  end
end
