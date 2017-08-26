require 'rails_helper'

feature "bookmarks" do
  given :factory_user { create(:user) }
  given! :topic1 { create(:topic, user: factory_user) }
  given! :bookmark { create(:bookmark, topic: topic1) }

  background do
    sign_in factory_user
  end

  context "new" do

    scenario 'has a link from #topic page' do
      visit topics_path
      click_link("topic-show-path-#{topic1.id}")
      click_link('new-bookmark-from-nav')
      expect(page.status_code).to eq 200
    end

  end

  context "can be created" do
    before do
        visit new_topic_bookmark_path(topic1)
    end

    scenario 'using a new form that can be reached' do
      expect(page.status_code).to eq 200
    end

    scenario 'from the new form page successfully' do
      fill_in "bookmark[url]", with: "https//thebesturl.com"

      expect { click_on "Save" }.to change(Bookmark, :count).by(1)
    end
  end

  context "can be edited" do

    scenario 'from the topics page' do
      click_link
    end
  end

  context "can be deleted" do

  end

end
