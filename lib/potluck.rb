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

  def menu
    # @category = []
    # @collector = []
    #
    # hash = Hash.new {0}
    #   @dishes.each do |dish|
    #     @category << dish.category
    #   end
    #   uniq_categories = @category.uniq
    #
    #   hash = Hash.new{ |hash,key| hash[key] = []}
    #     uniq_categories.each do |category|
    #       x = @dishes.each do |dish|
    #         if dish.category == category
    #           @collector << dish.name
    #         end
    #       end
    #       hash[category] = x
    #     end
    #     return hash
  end


end
