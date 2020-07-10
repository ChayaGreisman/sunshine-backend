class ChildrenController < ApplicationController
    def index
        children = Child.all
        render json: children, include: 
            [:allergies => {:only => [:id,:name,:severe,:child_id]}, 
             :toys => {:only => [:id,:name,:img_url,:child_id]}]
    end
end
