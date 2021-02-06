class ApplicationController < ActionController::Base
    before_action :authenticate_user!

    # layout :layout_to_render

    # def layout_to_render
    #     if devise_controller?
    #         'devise'
    #     else
    #         'application'
    #     end
    # end
end
