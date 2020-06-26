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

    def edit
        @dev = Dev.find(params[:id])
    end

    def update
        @dev = Dev.find(params[:id])
        @dev.update(dev_params)
        redirect_to dev_path(@dev)
    end

    def destroy
        @dev = Dev.find(params[:id])
        @dev.destroy
        redirect_to devs_path
    end

    private
    def dev_params
        params.require(:dev).permit(:name, :experience, :workplace, :project_ids => [])
    end
end
