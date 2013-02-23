class TextmessageController < ApplicationController
skip_before_filter :authorize
  
  def new
  @textmessage = TextMessage.new("Love","love")
  @textmessage.text = params[:text]
  @textmessage.phone = params[:phone]
  @textmessage.save 
  
  respond_to do |format|
  format.all {render :text=>'Thank you! Your request is being processed'}
  end 
  end


  def index
    @textmessage = TextMessage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @textmessage }
    end

 def show
    @textmessage = TextMessage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @textmessage }
    end
 end 

  end

end
