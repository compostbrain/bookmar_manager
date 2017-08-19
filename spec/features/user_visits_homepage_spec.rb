require 'rails_helper'

feature "User visits homepage" do
  let(:factory_user) { create(:user) }
  scenario "successfully" do

    sign_in factory_user
    visit root_path
    expect(page).to have_css 'p', text: "Future home of the dashboard"
  end
end

=begin
require 'rails_helper'

describe 'navigate' do
  describe 'homepage' do
    it 'can be reached successfully' do
      visit root_path
      expect(page.status_code).to eq(200)
    end
  end
=end
