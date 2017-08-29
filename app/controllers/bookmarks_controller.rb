class BookmarksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_topic, only: [:new, :create, :edit]
  before_action :set_bookmark, only: [:edit, :update, :destroy]

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

  def update
    @bookmark.assign_attributes(bookmark_params)
    authorize @bookmark
    if @bookmark.save
      flash[:notice] = "Bookmark was updated."
      redirect_to topics_path
    else
      flash.now[:alert] = "There was an error saving the bookmark. Please try again."
      render :edit
    end
  end

  def destroy
    authorize @bookmark
    @bookmark.delete
    redirect_to topics_path, notice: 'Your bookmark was deleted'
  end

  private

  def set_topic
    @topic = Topic.find(params[:topic_id])
  end



  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:url)
  end
end
