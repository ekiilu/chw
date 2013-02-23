class DotsmembersController < ApplicationController
  # GET /dotsmembers
  # GET /dotsmembers.json
layout "tb"
  def index
    @dotsmembers = Dotsmember.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dotsmembers }
    end
  end

  # GET /dotsmembers/1
  # GET /dotsmembers/1.json
  def show
    @dotsmember = Dotsmember.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dotsmember }
    end
  end

  # GET /dotsmembers/new
  # GET /dotsmembers/new.json
  def new
    @dotsmember = Dotsmember.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dotsmember }
    end
  end

  # GET /dotsmembers/1/edit
  def edit
    @dotsmember = Dotsmember.find(params[:id])
  end

  # POST /dotsmembers
  # POST /dotsmembers.json
  def create
    @dotsmember = Dotsmember.new(params[:dotsmember])

    respond_to do |format|
      if @dotsmember.save
        format.html { redirect_to @dotsmember, notice: 'Dotsmember was successfully created.' }
        format.json { render json: @dotsmember, status: :created, location: @dotsmember }
      else
        format.html { render action: "new" }
        format.json { render json: @dotsmember.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dotsmembers/1
  # PUT /dotsmembers/1.json
  def update
    @dotsmember = Dotsmember.find(params[:id])

    respond_to do |format|
      if @dotsmember.update_attributes(params[:dotsmember])
        format.html { redirect_to @dotsmember, notice: 'Dotsmember was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dotsmember.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dotsmembers/1
  # DELETE /dotsmembers/1.json
  def destroy
    @dotsmember = Dotsmember.find(params[:id])
    @dotsmember.destroy

    respond_to do |format|
      format.html { redirect_to dotsmembers_url }
      format.json { head :no_content }
    end
  end
end
