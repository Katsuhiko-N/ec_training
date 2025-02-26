class HomesController < ApplicationController
    def top
        
    end
    
    def test_prof
        @user = User.find(current_user.id)
    end
end
