class DevsController < ApplicationController

    def index
        @devs = Dev.all
    end

    def show
        @dev = Dev.find(params[:id])
    end

    def new
        @dev = Dev.new
    end
  
    def create
         @dev = Dev.create(dev_params)
         redirect_to dev_path(@dev)
    end

    private
    def dev_params
        params.require(:dev).permit(:name, :experience, :workplace, :project_ids => [])
    end
end
