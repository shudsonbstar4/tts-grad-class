class StartupResourcesController < ApplicationController
  before_action :set_startup_resource, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @startup_resources = StartupResource.all
    respond_with(@startup_resources)
  end

  def show
    respond_with(@startup_resource)
  end

  def new
    @startup_resource = StartupResource.new
    respond_with(@startup_resource)
  end

  def edit
  end

  def create
    @startup_resource = StartupResource.new(startup_resource_params)
    @startup_resource.save
    respond_with(@startup_resource)
  end

  def update
    @startup_resource.update(startup_resource_params)
    respond_with(@startup_resource)
  end

  def destroy
    @startup_resource.destroy
    respond_with(@startup_resource)
  end

  private
    def set_startup_resource
      @startup_resource = StartupResource.find(params[:id])
    end

    def startup_resource_params
      params.require(:startup_resource).permit(:user_id, :category, :name, :url)
    end
end
