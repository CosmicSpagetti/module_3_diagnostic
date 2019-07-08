require 'rails_helper'

describe 'As a User' do 
  it 'Can search for foods and see list of food' do 
    visit "/"

    fill_in "sweet potatoes"

    click_on "Search"

    expect(current_path).to eq("/foods")

    within ".food-list" do 
      
    end
  end
end
# As a user,
# When I visit "/"
# And I fill in the search form with "sweet potatoes"
# (Note: Use the existing search form)
# And I click "Search"
# Then I should be on page "/foods"
# Then I should see a total of the number of items returned by the search. (531 for sweet potatoes)
# Then I should see a list of ten foods sorted by relevance.

# And for each of the foods I should see:
# - The food's NDB Number
# - The food's name
# - The food group to which the food belongs
# - The food's data source
# - The food's manufacturer
# ```