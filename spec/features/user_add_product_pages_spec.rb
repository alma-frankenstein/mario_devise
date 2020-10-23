# user sign-in will only work if 'rails db:seed' has been run
# if a user tries to add a product, the page will just refresh

require 'rails_helper'

describe "if a non-admin tries to add a new product, they're directed back to the products page" do
  it "doesn't allow non-admin to add a new product" do
    visit products_path
    fill_in 'Email', :with => 'userfriend@user.com'
    fill_in 'Password', :with => 'asdfasdf'
    click_on 'Log in'
    expect(page).to have_content 'Welcome'

    click_link 'Add new product'
    expect(page).to have_content 'Welcome'

    click_link 'Logout'
  end
end