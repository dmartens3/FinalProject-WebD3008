class AdminController < ApplicationController

    # Make sure that admins are authenticated
    before_action :authenticate_admin!

    # Go to admin home page
    def index
    end
end