class SmsController < ApplicationController
skip_before_filter :authorize

layout "settings"

  # GET /sms
  # GET /sms.json
  def index
    @sms = Sm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sms }
    end
  end

  # GET /sms/1
  # GET /sms/1.json
  def show
    @sm = Sm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sm }
    end
  end

  # GET /sms/new
  # GET /sms/new.json
  def new
    @sm = Sm.new
	@sm.phone =params[:phone]
	@sm.text = params[:text]
	@sm.save 
	#redirect_to @sm

	respond_to do |format|	
format.all { render :text=>'Thank you, your request is being processed'}
	end 
  end

 # when an sms is send we save it in the database then  
 # we analyse the sms
 
def getsms
	@new_sms = Sm.new
	@new_sms.phone = params[:phone]
	@new_sms.text = params[:text]
	@new_sms.save 

	respond_to do |format|
	format.all {render :text=>'Thank you , Your sms has been received'}
	end 
end 


  # GET /sms/1/edit
  def edit
    @sm = Sm.find(params[:id])
  end

  # POST /sms
  # POST /sms.json
  def create
    @sm = Sm.new


    respond_to do |format|
      if @sm.save
        format.html { redirect_to @sm, notice: 'Sm was successfully created.' }
        format.json { render json: @sm, status: :created, location: @sm }
      else
        format.html { render action: "new" }
        format.json { render json: @sm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sms/1
  # PUT /sms/1.json
  def update
    @sm = Sm.find(params[:id])

    respond_to do |format|
      if @sm.update_attributes(params[:sm])
        format.html { redirect_to @sm, notice: 'Sm was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sms/1
  # DELETE /sms/1.json
  def destroy
    @sm = Sm.find(params[:id])
    @sm.destroy

    respond_to do |format|
      format.html { redirect_to sms_url }
      format.json { head :no_content }
    end
  end
end
