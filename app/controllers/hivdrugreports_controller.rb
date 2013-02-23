class HivdrugreportsController < ApplicationController
  # GET /hivdrugreports
  # GET /hivdrugreports.json
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
	    @hivdrugreports = Hivdrugreport.new
	    @hivdrugreports.drawDrugGraph(@location_name,@location_id,@year)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hivdrugreports }
    end
  end

  # GET /hivdrugreports/1
  # GET /hivdrugreports/1.json
  def show
    @hivdrugreport = Hivdrugreport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hivdrugreport }
    end
  end

  # GET /hivdrugreports/new
  # GET /hivdrugreports/new.json
  def new
    @hivdrugreport = Hivdrugreport.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hivdrugreport }
    end
  end

  # GET /hivdrugreports/1/edit
  def edit
    @hivdrugreport = Hivdrugreport.find(params[:id])
  end

  # POST /hivdrugreports
  # POST /hivdrugreports.json
  def create
    @hivdrugreport = Hivdrugreport.new(params[:hivdrugreport])

    respond_to do |format|
      if @hivdrugreport.save
        format.html { redirect_to @hivdrugreport, notice: 'Hivdrugreport was successfully created.' }
        format.json { render json: @hivdrugreport, status: :created, location: @hivdrugreport }
      else
        format.html { render action: "new" }
        format.json { render json: @hivdrugreport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hivdrugreports/1
  # PUT /hivdrugreports/1.json
  def update
    @hivdrugreport = Hivdrugreport.find(params[:id])

    respond_to do |format|
      if @hivdrugreport.update_attributes(params[:hivdrugreport])
        format.html { redirect_to @hivdrugreport, notice: 'Hivdrugreport was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hivdrugreport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hivdrugreports/1
  # DELETE /hivdrugreports/1.json
  def destroy
    @hivdrugreport = Hivdrugreport.find(params[:id])
    @hivdrugreport.destroy

    respond_to do |format|
      format.html { redirect_to hivdrugreports_url }
      format.json { head :no_content }
    end
  end
end
