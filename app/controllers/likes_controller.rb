class LikesController < ApplicationController

  def index
    likes = current_user.likes.build(bookmark: @bookmark)
    @bookmarks = likes
  end

  def create
     @bookmark = Bookmark.find(params[:bookmark_id])
     like = current_user.likes.build(bookmark: @bookmark)
     authorize like

     if like.save
       redirect_to topics_path, notice: 'Liked Bookmark!'
     else
       redirect_to topics_path
     end
   end

   def destroy
     @bookmark = Bookmark.find(params[:bookmark_id])
     like = current_user.likes.find(params[:id])
     authorize like

     if like.destroy
      redirect_to topics_path, notice: 'Un-Liked Bookmark!'
     else
       redirect_to topics_path
     end
   end
end
