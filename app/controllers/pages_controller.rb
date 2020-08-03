class PagesController < ApplicationController

    before_action :require_user, except: [:index]
    def index
        @message = Message.new
        @messages = Message.custom_display # изначально тут было Message.all
    end

    

end
