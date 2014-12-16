class GuestrepliesController < ApplicationController
  before_action :set_event
  before_action :set_guestreply, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @guestreplies = Guestreply.all
    #@guestreplies = @event.guestreplies.all
    respond_with(@guestreplies)
  end

  def show
    respond_with(@guestreply)
  end

  def new
    @guestreply = Guestreply.new
    respond_with(@guestreply)
  end

  def edit
  end

  def create
    @guestreply = Guestreply.new(guestreply_params)
    @guestreply.save
    respond_with(@guestreply)
  end

  def update
    @guestreply.update(guestreply_params)
    respond_with(@guestreply)
  end

  def destroy
    @guestreply.destroy
    respond_with(@guestreply)
  end

  def only_future_events
    if event.in_past?
      errors.add(:event, "must be in the future")
    end
  end

  private

    def set_event
      @event = Event.find(params[:event_id])
    end

    def set_guestreply
      @guestreply = Guestreply.find(params[:id])
    end

    def guestreply_params
      params.require(:guestreply).permit(:user_id, :event_id, :guest_count)
    end
end
