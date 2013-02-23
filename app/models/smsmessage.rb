require 'textmessageparser/smsparser.rb'

class Smsmessage < ActiveRecord::Base


def render(phone_number,message)
@smsparser = Textmessageparser.new(phone_number,message)
@smsparser.render
end 


end
