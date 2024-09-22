class PagesController < ApplicationController
    def joinus
        redirect_to projects_path if user_signed_in?
    end
    def projects
        @developers = User.where(user_type: 'developer')
        @qas = User.where(user_type: 'qa')
    end

end