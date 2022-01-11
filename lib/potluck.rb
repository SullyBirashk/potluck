class Potluck
  attr_reader :date, :dishes

  def initialize(date)
    @date = date
    @dishes = []
    @cats = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(category)
    @dishes.select do |dish|
      if dish.category == category
        @cats << dish
      end
    end
  end

end
