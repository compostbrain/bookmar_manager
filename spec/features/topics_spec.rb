require 'rails_helper'

describe 'Navigation' do
  let :factory_user { create(:user) }
  before do
    sign_in factory_user
  end

  describe 'to index' do
    before do
      @topic1 = FactoryGirl.create(:topic, user: factory_user)
      @topic2 = FactoryGirl.create(:topic, user: factory_user)
      @bookmark1 = FactoryGirl.create(:bookmark, topic: @topic1)
      @bookmark2 = FactoryGirl.create(:bookmark, topic: @topic2)
      visit topics_path
    end

    it 'can be reached successfully' do
      expect(page.status_code).to eq(200)
    end

    it 'has a title of Topics' do
      expect(page).to have_content(/Topics/)
    end

    xit 'has a list of Topics with associated bookmarks' do
      within(:css, "#{@topic1.slug}") do

        expect(page.find("#bookmark").all).to eq(1)
        # find all bookmarks and expect the size to be 1
      end
    end
  end
end
