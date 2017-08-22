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

# Clicking on a topic should take the user to that topic's show view and display only those bookmarks which belong to it
  describe 'show' do
    it 'has a link in #topics page' do
      visit topics_path
      click_link("show-topic-path")
      expect(page.status_code).to eq(200)
    end

  end

  describe 'new' do
    it 'has a link on #topics page' do
    visit topics_path

    click_link("new-topic-from-nav")
    expect(page.status_code).to eq(200)
    end
  end

  describe "creation" do
    before do
      visit new_topic_path
    end

    it "has a new form that can be reached" do
      expect(page.status_code).to eq(200)
    end

    it "can be created from new form page" do

      fill_in 'topic[title]', with: '#An Excellent Topic'
      click_on "Save"

      expect(page).to have_content('#An Excellent Topic')
    end

    it 'will have a user associated it' do
      fill_in 'topic[title]', with: '#A User Associated Topic'
      click_on "Save"

      expect(User.last.topics.last.title).to eq('#A User Associated Topic')
    end
  end

  describe 'delete ' do
    it 'can be deleted' do
      @topic = FactoryGirl.create(:topic)
      visit topics_path

      click_link("delete-topic-#{@topic.id}-from-index")
      expect(page.status_code).to eq(200)
    end
  end
end
