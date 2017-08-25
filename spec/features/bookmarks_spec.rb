require 'rails_helper'
# Are you able to create new bookmarks?
# Are you able to update bookmarks?
# Are you able to delete bookmarks?
feature "bookmarks" do
  given :factory_user { create(:user) }
  given! :topic1 { create(:topic, user: factory_user) }
  

  background do
    sign_in factory_user
  end

  context "new" do
    scenario 'has a link from #topic page' do
      visit topics_path
      click_link("topic-show-path-#{topic1.id}")
      click_link('new_bookmark_path')
      expect(page.status_code).to eq 200
    end
  end

  context "can be created successfully" do
    before do
        visit new_bookmark_path
    end

    scenario 'has a new form that can be reached' do
      expect(page.status_code).to eq 200
    end




  end
end
