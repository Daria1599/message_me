class PagesController < ApplicationController

    def index
        @message = Message.all
    end

end
