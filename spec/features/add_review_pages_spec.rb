require 'rails_helper'

describe "add a review to a product" do
  it "adds a review to a product" do
    visit products_path
    click_link 'Add new product'
    fill_in 'Name', :with => 'Fennel'
    fill_in 'Cost', :with => '2'
    fill_in 'Country of origin', :with => 'Mexico'
    click_on 'Create Product'
    click_on 'Fennel'
    click_on 'Add a review'
    fill_in 'Author', :with => 'Mike'
    fill_in 'Content body', :with => 'In season this month, especially good roasted with garlic and served with rice'
    fill_in 'Rating', :with => '4'
    click_on 'Create Review'
    expect(page).to have_content 'In season'
  end
end