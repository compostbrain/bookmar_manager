class BookmarksController < ApplicationController
  before_action :set_topic, only: [:new, :create]

  def show
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.topic_id = @topic.id
    if @bookmark.save
    redirect_to topics_path, notice: 'Your bookmark was created successfully'
    else
      render :new
    end
  end

  def edit
  end

  private

  def set_topic
    @topic = Topic.find(params[:topic_id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:url)
  end
end
