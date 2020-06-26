class DevsController < ApplicationController

    before_action :find_dev, only: [:show, :edit, :update, :destroy]

    def index
        if params["company_name"] == "Flat co"
            @devs = Dev.company("Flat co")
            @flat_co = "checked"
            @co = nil
            @all_dev = nil
        elsif params["company_name"] == "Co"
            @devs = Dev.company("Co")
            @flat_co = nil
            @co = "checked"
            @all_dev = nil
        else
            @devs = Dev.all
            @flat_co = nil
            @co = nil
            @all_dev = "checked"
        end
    end

    def show
        # @dev = Dev.find(params[:id])
    end

    def new
        @dev = Dev.new
    end
  
    def create
        @dev = Dev.create(dev_params)
        redirect_to dev_path(@dev)
    end

    def edit
        # @dev = Dev.find(params[:id])
    end

    def update
        # @dev = Dev.find(params[:id])
        @dev.update(dev_params)
        redirect_to dev_path(@dev)
    end

    def destroy
        # @dev = Dev.find(params[:id])
        @dev.destroy
        redirect_to devs_path
    end

    private
    def dev_params
        params.require(:dev).permit(:name, :experience, :workplace, :project_ids => [])
    end

    def find_dev
        @dev = Dev.find(params[:id])
    end
end
