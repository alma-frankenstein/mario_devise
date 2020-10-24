require 'rails_helper'

describe "if a non-admin tries to delete, they're directed back to the products page" do
  it "doesn't let a non-admin delete" do
    visit products_path
    fill_in 'Email', :with => 'userfriend@user.com'
    fill_in 'Password', :with => 'asdfasdf'
    click_on 'Log in'

    click_on 'Kugel'
    click_on 'Delete this product'
    expect(page).to have_content 'Kugel'

    click_link 'Logout'
  end
end