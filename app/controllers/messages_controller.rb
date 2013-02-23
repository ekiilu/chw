class MessagesController < ApplicationController
def create
Messages.new(params[:message])
redirect_to :action => "index"
end 
end
