require 'rails_helper'

 RSpec.describe Topic, type: :model do
   describe "Creation" do
     before do
       @user = FactoryGirl.create(:user)
       login_as(@user, :scope => :user)
       @topic = FactoryGirl.create(:topic)
     end
     it "can be created" do
       expect(@topic).to be_valid
     end

     it "cannot be created without a title" do
       @topic.title = nil

       expect(@topic).to_not be_valid

     end

   end
 end
