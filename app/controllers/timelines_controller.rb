class TimelinesController < ApplicationController
  def index
    @clicktimelines = ClickTimeline.all
    @counttimelines = ClickTimeline.all.count
  end

  def new
    @clicktimeline = ClickTimeline.new

  end

  def create
    @clicktimeline = ClickTimeline.new
    @clicktimeline.save
    redirect_to root_path
  end
   
  def destroy
    @clicktimeline = ClickTimeline.find(params[:id])
    @clicktimeline.destroy
    redirect_to root_path
  end

end
