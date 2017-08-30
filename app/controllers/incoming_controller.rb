class IncomingController < ApplicationController

  # http://stackoverflow.com/questions/1177863/how-do-i-ignore-the-authenticity-token-for-specific-actions-in-rails
  skip_before_action :verify_authenticity_token,, only: [:create]
  skip_before_action :authenticate_user!, only: [:create]

  def create

    puts "INCOMING PARAMS HERE: #{params}"

    incoming_user = params[:sender]
    puts incoming_user
    incoming_topic = params[:subject]
    puts incoming_topic
    incoming_bookmark = params["body-plain"]
    puts incoming_bookmark
    puts User.exists?(email: incoming_user)

    if !User.exists?(email: incoming_user)
      new_user = User.create(email: incoming_user, password: "password", username: incoming_user)
    else
      new_user = User.find_by(email: incoming_user)
    end

    if !Topic.exists?(title: incoming_topic)
      new_topic = Topic.create(title: incoming_topic, user_id: new_user)
    else
      new_topic = Topic.find_by(title: incoming_topic)
    end


    if !Bookmark.exist?(url: incoming_bookmark, topic_id: new_topic)
      new_bookmark = Bookmark.create(url: incoming_bookmark, topic_id: new_topic)

    end

    head 200
  end
end
