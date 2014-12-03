class StartupListsController < ApplicationController
  before_action :set_startup_list, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @startup_lists = StartupList.all
    respond_with(@startup_lists)
  end

  def show
    respond_with(@startup_list)
  end

  def new
    @startup_list = StartupList.new
    respond_with(@startup_list)
  end

  def edit
  end

  def create
    @startup_list = StartupList.new(startup_list_params)
    @startup_list.save
    respond_with(@startup_list)
  end

  def update
    @startup_list.update(startup_list_params)
    respond_with(@startup_list)
  end

  def destroy
    @startup_list.destroy
    respond_with(@startup_list)
  end

  private
    def set_startup_list
      @startup_list = StartupList.find(params[:id])
    end

    def startup_list_params
      params.require(:startup_list).permit(:name, :url)
    end
end
