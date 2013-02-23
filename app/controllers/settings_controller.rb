class SettingsController < ApplicationController
layout "settings"
def index
redirect_to smsmessages_path
end 
end
