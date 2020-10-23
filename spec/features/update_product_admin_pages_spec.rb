require 'rails_helper'

describe "updates a product" do
  it "updates a product" do
    visit products_path
    fill_in 'Email', :with => 'adminFriend@admin.com'
    fill_in 'Password', :with => 'asdfasdf'
    click_on 'Log in'

    click_link 'Add new product'
    fill_in 'Name', :with => 'Fennel'
    fill_in 'Cost', :with => '2'
    fill_in 'Country of origin', :with => 'Mexico'
    click_on 'Create Product'
    click_on 'Fennel'
    click_on 'Edit name of product'
    fill_in 'Name', :with => 'Bagel'
    click_on 'Update Product'
    expect(page).to have_content 'Bagel'

    click_link 'Logout'
  end
end