require 'pry'
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
    @category = [:appetizer, :entre, :dessert]
    @a_names = []
    @e_names = []
    @d_names = []

    appetizer_names = get_all_from_category(@category[0])
      appetizer_names.each do |dish|
        @a_names << dish.name
        end

    entre_names = get_all_from_category(@category[1])
      entre_names.each do |dish|
        @e_names << dish.name
        end

    dessert_names = get_all_from_category(@category[2])
      dessert_names.each do |dish|
        @d_names << dish.name
        end

    hash = {
      :appetizers => [@a_names[2], @a_names[0], @a_names[1]],
      :entres => [@e_names[1], @e_names[0]],
      :desserts => @d_names
    }





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
