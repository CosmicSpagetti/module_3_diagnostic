class FoodsFacade
  def initialize(food)
    @food = food
  end

  def food_count 
    response = food_service.get 
    body = JSON.parse(response.body, symbolize_names: true)
    body[:list][:item].count
  end

  def foods
    response = food_service.get 
    body = JSON.parse(response.body, symbolize_names: true)
    list = body[:list][:item].map do |food_item|
      Food.new(food_item) 
    end
    list.take(10)
  end

  private 

  def food_service
     Faraday.new(:url => "https://api.nal.usda.gov/ndb/search/?q=#{@food}") do |faraday|
      faraday.params['format'] = 'json'
      faraday.params['api_key'] = ENV['FOOD_API_KEY'] 
      faraday.adapter Faraday.default_adapter
    end
  end
end