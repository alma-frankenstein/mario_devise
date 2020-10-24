require 'rails_helper'

describe "add a new product" do
  it "adds a new product" do
    visit products_path
    fill_in 'Email', :with => 'adminfriend@admin.com'
    fill_in 'Password', :with => 'asdfasdf'
    click_on 'Log in'
    expect(page).to have_content 'Welcome'

    click_link 'Add new product'
    fill_in 'Name', :with => 'Fennel'
    fill_in 'Cost', :with => '2'
    fill_in 'Country of origin', :with => 'Mexico'
    click_on 'Create Product'
    expect(page).to have_content 'Fennel'

    click_link 'Logout'
  end
end