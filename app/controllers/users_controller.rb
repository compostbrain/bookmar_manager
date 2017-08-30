class UsersController < ApplicationController
  def show
    @user_bookmarks = Bookmark.joins(:topic).where(topics: { user_id: params[:id] })
    @liked_bookmarks = Bookmark.joins(:likes).where(likes: { user_id: params[:id] }).uniq
  end
end
