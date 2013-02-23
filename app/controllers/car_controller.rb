class CarController < ApplicationController
def create
Car.new(params[:car])
redirect_to :action => "index"
end 
end
