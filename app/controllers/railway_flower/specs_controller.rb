module RailwayFlower

  class SpecsController < ActionController::Base
    def index
    end
    
    def run
      @manifest = params[:manifest]
    end
  end

end
