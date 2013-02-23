class TbcasesController < ApplicationController
  # GET /tbcases
  # GET /tbcases.json

layout "tb"

  def index
    @tbcases = Tbcase.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tbcases }
    end
  end

  # GET /tbcases/1
  # GET /tbcases/1.json
  def show
    @tbcase = Tbcase.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tbcase }
    end
  end

  # GET /tbcases/new
  # GET /tbcases/new.json
  def new
    @tbcase = Tbcase.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tbcase }
    end
  end

  # GET /tbcases/1/edit
  def edit
    @tbcase = Tbcase.find(params[:id])
  end

  # POST /tbcases
  # POST /tbcases.json
  def create
    @tbcase = Tbcase.new(params[:tbcase])

    respond_to do |format|
      if @tbcase.save
        format.html { redirect_to @tbcase, notice: 'Tbcase was successfully created.' }
        format.json { render json: @tbcase, status: :created, location: @tbcase }
      else
        format.html { render action: "new" }
        format.json { render json: @tbcase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tbcases/1
  # PUT /tbcases/1.json
  def update
    @tbcase = Tbcase.find(params[:id])

    respond_to do |format|
      if @tbcase.update_attributes(params[:tbcase])
        format.html { redirect_to @tbcase, notice: 'Tbcase was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tbcase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tbcases/1
  # DELETE /tbcases/1.json
  def destroy
    @tbcase = Tbcase.find(params[:id])
    @tbcase.destroy

    respond_to do |format|
      format.html { redirect_to tbcases_url }
      format.json { head :no_content }
    end
  end
end
