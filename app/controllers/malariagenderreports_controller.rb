class MalariagenderreportsController < ApplicationController
	layout "malaria"

  # GET /malariagenderreports
  # GET /malariagenderreports.json
  def index
    @malariagenderreport = Malariagenderreport.new
    @malariagenderreport.drawGenderGraph("Im Loving This")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @malariagenderreports }
    end
  end

  # GET /malariagenderreports/1
  # GET /malariagenderreports/1.json
  def show
    @malariagenderreport = Malariagenderreport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @malariagenderreport }
    end
  end

  # GET /malariagenderreports/new
  # GET /malariagenderreports/new.json
  def new
    @malariagenderreport = Malariagenderreport.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @malariagenderreport }
    end
  end

  # GET /malariagenderreports/1/edit
  def edit
    @malariagenderreport = Malariagenderreport.find(params[:id])
  end

  # POST /malariagenderreports
  # POST /malariagenderreports.json
  def create
    @malariagenderreport = Malariagenderreport.new(params[:malariagenderreport])

    respond_to do |format|
      if @malariagenderreport.save
        format.html { redirect_to @malariagenderreport, notice: 'Malariagenderreport was successfully created.' }
        format.json { render json: @malariagenderreport, status: :created, location: @malariagenderreport }
      else
        format.html { render action: "new" }
        format.json { render json: @malariagenderreport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /malariagenderreports/1
  # PUT /malariagenderreports/1.json
  def update
    @malariagenderreport = Malariagenderreport.find(params[:id])

    respond_to do |format|
      if @malariagenderreport.update_attributes(params[:malariagenderreport])
        format.html { redirect_to @malariagenderreport, notice: 'Malariagenderreport was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @malariagenderreport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /malariagenderreports/1
  # DELETE /malariagenderreports/1.json
  def destroy
    @malariagenderreport = Malariagenderreport.find(params[:id])
    @malariagenderreport.destroy

    respond_to do |format|
      format.html { redirect_to malariagenderreports_url }
      format.json { head :no_content }
    end
  end
end
