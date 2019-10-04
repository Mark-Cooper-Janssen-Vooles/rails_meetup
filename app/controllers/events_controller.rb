class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :set_group

  # GET /events
  # GET /events.json
  def index
    @group = Group.find(params[:group_id])
    @events = @group.events.all
  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    @event = Event.new
    @group = Group.find(params[:group_id])
  end

  # GET /events/1/edit
  def edit
    
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)
    @group = Group.find(params[:group_id])
    
    respond_to do |format|
      if @event.save
        format.html { redirect_to group_event_path(@group.id, @event.id), notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to group_event_path, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to group_events_path, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:name, :date, :location, :group_id, :image_url, :details)
    end

    def set_group
      # @event = Event.find(params[:id])
      @group = Group.find(params[:group_id])
    end

end
