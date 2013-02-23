class MalariacasesController < ApplicationController
  # GET /malariacases
  # GET /malariacases.json
layout "malaria"
  def index
    @malariacases = Malariacase.all
	 @locations = Villageworker.find(:all)
    @drop_down_array = Array.new

	@locations.each do |location|
		@loc = Array.new	
		@loc << location.firstname
		@loc << location.id 
		@drop_down_array << @loc
	end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @malariacases }
    end
  end

  # GET /malariacases/1
  # GET /malariacases/1.json
  def show
    @malariacase = Malariacase.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @malariacase }
    end
  end

  # GET /malariacases/new
  # GET /malariacases/new.json
  def new
    @malariacase = Malariacase.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @malariacase }
    end
  end

#show malaria case report 

def showreport
respond_to do |format|
format.html
end 
end 


  # GET /malariacases/1/edit
  def edit
    @malariacase = Malariacase.find(params[:id])
  end

  # POST /malariacases
  # POST /malariacases.json
  def create
    @malariacase = Malariacase.new(params[:malariacase])

    respond_to do |format|
      if @malariacase.save
        format.html { redirect_to @malariacase, notice: 'Malariacase was successfully created.' }
        format.json { render json: @malariacase, status: :created, location: @malariacase }
      else
        format.html { render action: "new" }
        format.json { render json: @malariacase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /malariacases/1
  # PUT /malariacases/1.json
  def update
    @malariacase = Malariacase.find(params[:id])

    respond_to do |format|
      if @malariacase.update_attributes(params[:malariacase])
        format.html { redirect_to @malariacase, notice: 'Malariacase was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @malariacase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /malariacases/1
  # DELETE /malariacases/1.json
  def destroy
    @malariacase = Malariacase.find(params[:id])
    @malariacase.destroy

    respond_to do |format|
      format.html { redirect_to malariacases_url }
      format.json { head :no_content }
    end
  end
end
