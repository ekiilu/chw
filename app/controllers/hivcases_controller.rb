class HivcasesController < ApplicationController
  # GET /hivcases
  # GET /hivcases.json

layout "hivaid"
  def index
    @hivcases = Hivcase.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hivcases }
    end
  end

  # GET /hivcases/1
  # GET /hivcases/1.json
  def show
    @hivcase = Hivcase.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hivcase }
    end
  end

  # GET /hivcases/new
  # GET /hivcases/new.json
  def new
    @hivcase = Hivcase.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hivcase }
    end
  end

  # GET /hivcases/1/edit
  def edit
    @hivcase = Hivcase.find(params[:id])
  end

  # POST /hivcases
  # POST /hivcases.json
  def create
    @hivcase = Hivcase.new(params[:hivcase])

    respond_to do |format|
      if @hivcase.save
        format.html { redirect_to @hivcase, notice: 'Hivcase was successfully created.' }
        format.json { render json: @hivcase, status: :created, location: @hivcase }
      else
        format.html { render action: "new" }
        format.json { render json: @hivcase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hivcases/1
  # PUT /hivcases/1.json
  def update
    @hivcase = Hivcase.find(params[:id])

    respond_to do |format|
      if @hivcase.update_attributes(params[:hivcase])
        format.html { redirect_to @hivcase, notice: 'Hivcase was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hivcase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hivcases/1
  # DELETE /hivcases/1.json
  def destroy
    @hivcase = Hivcase.find(params[:id])
    @hivcase.destroy

    respond_to do |format|
      format.html { redirect_to hivcases_url }
      format.json { head :no_content }
    end
  end
end
