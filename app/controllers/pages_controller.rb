class PagesController < ApplicationController

    before_action :require_user, except: [:index]
    def index
        @message = Message.new
        @messages = Message.all
    end

end
