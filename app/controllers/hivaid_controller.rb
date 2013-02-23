class HivaidController < ApplicationController
layout "hivaid"

def index
redirect_to hivcases_path
end 
end
