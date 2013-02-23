class SmsmessagesController < ApplicationController
  # GET /smsmessages
  # GET /smsmessages.json
skip_before_filter :authorize

layout "settings"
  def index
    @smsmessages = Smsmessage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @smsmessages }
    end
  end

  # GET /smsmessages/1
  # GET /smsmessages/1.json
  def show
    @smsmessage = Smsmessage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @smsmessage }
    end
  end

  # GET /smsmessages/new
  # GET /smsmessages/new.json
  def new
    	@smsmessage = Smsmessage.new

	
	#redirect_to @sm

	respond_to do |format|	
	format.all { render :text=>@smsmessage.render(params[:phone],params[:text])}
	end 
 
  end

  # GET /smsmessages/1/edit
  def edit
    @smsmessage = Smsmessage.find(params[:id])
  end

  # POST /smsmessages
  # POST /smsmessages.json
  def create
    @smsmessage = Smsmessage.new(params[:smsmessage])

    respond_to do |format|
      if @smsmessage.save
        format.html { redirect_to @smsmessage, notice: 'Smsmessage was successfully created.' }
        format.json { render json: @smsmessage, status: :created, location: @smsmessage }
      else
        format.html { render action: "new" }
        format.json { render json: @smsmessage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /smsmessages/1
  # PUT /smsmessages/1.json
  def update
    @smsmessage = Smsmessage.find(params[:id])

    respond_to do |format|
      if @smsmessage.update_attributes(params[:smsmessage])
        format.html { redirect_to @smsmessage, notice: 'Smsmessage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @smsmessage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /smsmessages/1
  # DELETE /smsmessages/1.json
  def destroy
    @smsmessage = Smsmessage.find(params[:id])
    @smsmessage.destroy

    respond_to do |format|
      format.html { redirect_to smsmessages_url }
      format.json { head :no_content }
    end
  end
end
