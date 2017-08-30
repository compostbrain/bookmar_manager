class IncomingController < ApplicationController

  # http://stackoverflow.com/questions/1177863/how-do-i-ignore-the-authenticity-token-for-specific-actions-in-rails
  skip_before_filter :verify_authenticity_token, only: [:create]

  def create
    # Take a look at these in your server logs
    # to get a sense of what you're dealing with.
    puts "INCOMING PARAMS HERE: #{params}"

    #  incoming_user = params[:sender]
    #  incoming_topic = params[:subject]
    #  incoming_bookmark = params["body-plain"]

    #  if !User.exists?(email: incoming_user)
    #    new_user = User.create(email: incoming_user, password: "password", username: incoming_user)
    #  else
    #    new_user = User.find(params[])
    #  end
     #
    #  if !Topic.exists?(title: incoming_topic)
    #    new_topic = Topic.create(title: incoming_topic, user_id: new_user)
    #  else
    #    new_topic = incoming_topic
    #  end
     #
     #
    #  if !Bookmark.exist?(url: incoming_bookmark, topic_id: new_topic)
    #    new_bookmark = Bookmark.create(url: incoming_bookmark, topic_id: new_topic)
     #
    #  end


     # Now that you're sure you have a valid user and topic, build and save a new bookmark

    # Assuming all went well.
    head 200
  end
end
