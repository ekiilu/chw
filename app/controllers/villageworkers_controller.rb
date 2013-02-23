class VillageworkersController < ApplicationController
  # GET /villageworkers
  # GET /villageworkers.json

layout "application"

  def index
    @villageworkers = Villageworker.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @villageworkers }
    end
  end

  # GET /villageworkers/1
  # GET /villageworkers/1.json
  def show
    @villageworker = Villageworker.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @villageworker }
    end
  end

  # GET /villageworkers/new
  # GET /villageworkers/new.json
  def new
    @villageworker = Villageworker.new
    @locations = Location.find(:all)
    @drop_down_array = Array.new

	@locations.each do |location|
		@loc = Array.new	
		@loc << location.name
		@loc << location.id 
		@drop_down_array << @loc
	end
    
  respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @villageworker }
    end
  end

  # GET /villageworkers/1/edit
  def edit
   @locations = Location.find(:all)
    @drop_down_array = Array.new

	@locations.each do |location|
		@loc = Array.new	
		@loc << location.name
		@loc << location.id 
		@drop_down_array << @loc
	end
    @villageworker = Villageworker.find(params[:id])
  end

  # POST /villageworkers
  # POST /villageworkers.json
  def create
    @villageworker = Villageworker.new(params[:villageworker])

    respond_to do |format|
      if @villageworker.save
        format.html { redirect_to @villageworker, notice: 'Villageworker was successfully created.' }
        format.json { render json: @villageworker, status: :created, location: @villageworker }
      else
        format.html { render action: "new" }
        format.json { render json: @villageworker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /villageworkers/1
  # PUT /villageworkers/1.json
  def update
    @villageworker = Villageworker.find(params[:id])

    respond_to do |format|
      if @villageworker.update_attributes(params[:villageworker])
        format.html { redirect_to @villageworker, notice: 'Villageworker was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @villageworker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /villageworkers/1
  # DELETE /villageworkers/1.json
  def destroy
    @villageworker = Villageworker.find(params[:id])
    @villageworker.destroy

    respond_to do |format|
      format.html { redirect_to villageworkers_url }
      format.json { head :no_content }
    end
  end
end
