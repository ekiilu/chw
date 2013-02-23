class TbController < ApplicationController
layout "tb"

def index
redirect_to tbcases_path
end 

end
