require 'rails_helper'

describe "updates a review" do
  it "updates a review" do
    visit products_path
    fill_in 'Email', :with => 'adminFriend@admin.com'
    fill_in 'Password', :with => 'asdfasdf'
    click_on 'Log in'

    click_on 'Bagel'
    click_on 'Add a review'
    fill_in 'Author', :with => 'Mike'
    fill_in 'Content body', :with => 'In season this month, especially good roasted with garlic and served with rice'
    fill_in 'Rating', :with => '4'
    click_on 'Create Review'
    expect(page).to have_content 'In season'
    click_on 'In season this month, especially good roasted with garlic and served with rice'
    click_on 'Edit review'
    fill_in 'Content body', :with => 'well we had all these children out planting trees, see, because we figured that'
    click_on 'Update Review'
    expect(page).to have_content 'planting trees'

    click_link 'Logout'
  end
end