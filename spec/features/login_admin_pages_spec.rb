# admin sign-in will only work if 'rails db:seed' has been run

require 'rails_helper'

describe "log in as admin" do
  it "logs in an admin user" do
    visit products_path
    fill_in 'Email', :with => 'adminFriend@admin.com'
    fill_in 'Password', :with => 'asdfasdf'
    click_on 'Log in'
    expect(page).to have_content 'Welcome'

    click_link 'Logout'
  end
end