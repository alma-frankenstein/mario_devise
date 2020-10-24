require 'rails_helper'

describe "deletes a product" do
  it "deletes a product" do
    visit products_path
    fill_in 'Email', :with => 'adminFriend@admin.com'
    fill_in 'Password', :with => 'asdfasdf'
    click_on 'Log in'

    click_on 'Lox'
    click_on 'Delete this product'
    expect(page).not_to have_content 'Lox'

    click_link 'Logout'
  end
end