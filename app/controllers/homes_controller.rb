class HomesController < ApplicationController
    # before_action :authenticate_admin!, only: [:test_admin]
    
    def top
    end
    
    def test_prof
        @user = User.find(current_user.id)
    end
    
    def test_admin
    end
end
