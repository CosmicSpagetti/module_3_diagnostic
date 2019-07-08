class FoodsFacade
  def initialize(food)
    @food = food
  end

  def food_count 
    conn = Faraday.new(:url => 'https://api.nal.usda.gov/ndb/search/') do |faraday|
      faraday.params['format'] = 'json'
      faraday.params['api_key'] = ENV['FOOD_API_KEY'] 
      faraday.adapter Faraday.default_adapter
    end
    binding.pry
    conn.get "#{@food}"
  end

  def foods
    
  end
end