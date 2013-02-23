class HivcontraceptionreportsController < ApplicationController
  # GET /hivcontraceptionreports
  # GET /hivcontraceptionreports.json
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

    @hivcontraceptionreports = Hivcontraceptionreport.new
    @hivcontraceptionreports.drawContraceptionGraph(@location_name,@location_id,@year)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hivcontraceptionreports }
    end
  end

  # GET /hivcontraceptionreports/1
  # GET /hivcontraceptionreports/1.json
  def show
    @hivcontraceptionreport = Hivcontraceptionreport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hivcontraceptionreport }
    end
  end

  # GET /hivcontraceptionreports/new
  # GET /hivcontraceptionreports/new.json
  def new
    @hivcontraceptionreport = Hivcontraceptionreport.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hivcontraceptionreport }
    end
  end

  # GET /hivcontraceptionreports/1/edit
  def edit
    @hivcontraceptionreport = Hivcontraceptionreport.find(params[:id])
  end

  # POST /hivcontraceptionreports
  # POST /hivcontraceptionreports.json
  def create
    @hivcontraceptionreport = Hivcontraceptionreport.new(params[:hivcontraceptionreport])

    respond_to do |format|
      if @hivcontraceptionreport.save
        format.html { redirect_to @hivcontraceptionreport, notice: 'Hivcontraceptionreport was successfully created.' }
        format.json { render json: @hivcontraceptionreport, status: :created, location: @hivcontraceptionreport }
      else
        format.html { render action: "new" }
        format.json { render json: @hivcontraceptionreport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hivcontraceptionreports/1
  # PUT /hivcontraceptionreports/1.json
  def update
    @hivcontraceptionreport = Hivcontraceptionreport.find(params[:id])

    respond_to do |format|
      if @hivcontraceptionreport.update_attributes(params[:hivcontraceptionreport])
        format.html { redirect_to @hivcontraceptionreport, notice: 'Hivcontraceptionreport was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hivcontraceptionreport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hivcontraceptionreports/1
  # DELETE /hivcontraceptionreports/1.json
  def destroy
    @hivcontraceptionreport = Hivcontraceptionreport.find(params[:id])
    @hivcontraceptionreport.destroy

    respond_to do |format|
      format.html { redirect_to hivcontraceptionreports_url }
      format.json { head :no_content }
    end
  end
end
