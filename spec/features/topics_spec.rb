require 'rails_helper'

describe 'Navigatiion' do
  before do
    factory_user = FactoryGirl.create(:user)
    sign_in factory_user
  end

  describe 'to index' do
    before do
      topic1 = FactoryGirl.create(:topic)
      topic2 = FactoryGirl.create(:topic)
      bookmark1 = FactoryGirl/create(:bookmark)
      bookmark2 = FactoryGirl/create(:bookmark)
      visit topics_path
    end

    it 'can be reached successfully' do
      expect(page.status_code).to eq(200)
    end

    it 'has a title of Topics' do
      expect(page).to have_content(/Topics#index/)
    end

    xit 'has a list of Topics with associated bookmarks' do
      expe
    end
  end
end
