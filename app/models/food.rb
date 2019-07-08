class Food 
  attr_reader :ndb_number,
              :food_name,
              :food_group,
              :data_source,
              :manufacturer
  def initialize(food_attributes)
    @ndb_number = food_attributes[:ndbno]
    @food_name = food_attributes[:name]
    @food_group = food_attributes[:group]
    @data_source = food_attributes[:ds]
    @manufacturer = food_attributes[:manu]
  end
end