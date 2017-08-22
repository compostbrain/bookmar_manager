require 'rails_helper'

RSpec.describe Topic, type: :model do
  describe 'Creation' do
    before do
      @user = FactoryGirl.create(:user)
      login_as(@user, scope: :user)
      @topic = FactoryGirl.create(:topic)
    end
    it 'can be created' do
      expect(@topic).to be_valid
    end

    it 'cannot be created without a title' do
      @topic.title = nil

      expect(@topic).to_not be_valid
    end
  end

  describe '#slug' do
    it 'returns the title, hyphened and downcased' do
      topic = Topic.new(title: 'Through the  Looking Glass')
      expect(topic.slug).to eq('through-the-looking-glass')
    end
  end
end
