class PagesController < ApplicationController

    before_action :require_user, except: [:index]
    def index
        @messages = Message.all
    end

end
