class TopicsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_topic, only: [:show, :destroy, :edit]

  def index
    @topics = Topic.all
  end

  def show
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    @topic.user_id = current_user.id
    if @topic.save
    redirect_to topics_path, notice: 'Your topic was created successfully'
    else
      render :new
    end
  end

  def edit
  end

  def destroy
    @topic.destroy
    redirect_to topics_path, notice: 'Your topic was deleted'
  end

  private

  def topic_params
    params.require(:topic).permit(:title)
  end

  def set_topic
    @topic = Topic.find(params[:id])
  end
end
