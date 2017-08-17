require 'rails_helper'

feature "User visits homepage" do
  let(:factory_user) { create(:user) }
  scenario "successfully" do

    sign_in :factory_user


    expect(page).to have_css 'h1'#, text: "Welcome to Bookmark Manager"
  end
end
