require 'rails_helper'

describe "add a review to a product" do
  it "adds a review to a product" do
    visit products_path
    fill_in 'Email', :with => 'userfriend@user.com'
    fill_in 'Password', :with => 'asdfasdf'
    click_on 'Log in'

    click_on 'Bagel'
    click_on 'Add a review'
    fill_in 'Author', :with => 'Mike'
    fill_in 'Content body', :with => 'In season this month, especially good roasted with garlic and served with rice'
    fill_in 'Rating', :with => '4'
    click_on 'Create Review'
    expect(page).to have_content 'In season'

    click_link 'Logout'
  end
end