class TblocationreportsController < ApplicationController
  # GET /tblocationreports
  # GET /tblocationreports.json
layout "tb"
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
 		@tblocationreports = Tblocationreport.new
	    	@tblocationreports.drawLocationGraph(@location_name,@location_id,@year)
	end 
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tblocationreports }
    end
  end

  # GET /tblocationreports/1
  # GET /tblocationreports/1.json
  def show
    @tblocationreport = Tblocationreport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tblocationreport }
    end
  end

  # GET /tblocationreports/new
  # GET /tblocationreports/new.json
  def new
    @tblocationreport = Tblocationreport.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tblocationreport }
    end
  end

  # GET /tblocationreports/1/edit
  def edit
    @tblocationreport = Tblocationreport.find(params[:id])
  end

  # POST /tblocationreports
  # POST /tblocationreports.json
  def create
    @tblocationreport = Tblocationreport.new(params[:tblocationreport])

    respond_to do |format|
      if @tblocationreport.save
        format.html { redirect_to @tblocationreport, notice: 'Tblocationreport was successfully created.' }
        format.json { render json: @tblocationreport, status: :created, location: @tblocationreport }
      else
        format.html { render action: "new" }
        format.json { render json: @tblocationreport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tblocationreports/1
  # PUT /tblocationreports/1.json
  def update
    @tblocationreport = Tblocationreport.find(params[:id])

    respond_to do |format|
      if @tblocationreport.update_attributes(params[:tblocationreport])
        format.html { redirect_to @tblocationreport, notice: 'Tblocationreport was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tblocationreport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tblocationreports/1
  # DELETE /tblocationreports/1.json
  def destroy
    @tblocationreport = Tblocationreport.find(params[:id])
    @tblocationreport.destroy

    respond_to do |format|
      format.html { redirect_to tblocationreports_url }
      format.json { head :no_content }
    end
  end
end
