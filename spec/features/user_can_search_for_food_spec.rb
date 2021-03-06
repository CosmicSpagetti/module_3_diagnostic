require 'rails_helper'

describe 'As a User' do 
  it 'Can search for foods and see list of food' do 
    visit "/"

    fill_in with: "sweet potatoes"

    click_on "Search"

    expect(current_path).to eq("/foods")


    within ".food-list" do 
      expect(page).to have_content("150 Results Found") # I kept getting 150 not 531 
      expect(food-list-food.first).to have_content("NDB Number: 45094945")
      expect(food-list-food.first).to have_content("Food Name: ONE POTATO TWO POTATO, PLAIN JAYNES, SWEET POTATO CHIPS, UPC: 785654000544")
      expect(food-list-food.first).to have_content("Food Group: Branded Food Products Database")
      expect(food-list-food.first).to have_content("Data Source: LI")
      expect(food-list-food.first).to have_content("Manufacturer: Dieffenbach's Potato Chips")
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

