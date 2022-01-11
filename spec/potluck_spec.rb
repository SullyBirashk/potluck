require './lib/dish'
require './lib/potluck'

RSpec.describe Potluck do
  before :each do
    @dish = Dish.new("Couscous Salad", :appetizer)
    @potluck = Potluck.new("7-13-18")
    @couscous_salad = Dish.new("Couscous Salad", :appetizer)
    @cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
  end

  it 'exist' do
    expect(@potluck).to be_instance_of(Potluck)
  end

  it 'has a date' do
    expect(@potluck.date).to eq("7-13-18")
  end

  it 'has dishes' do
    expect(@potluck.dishes).to eq([])
  end

  it 'can add dishes' do
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@cocktail_meatballs)

    expect(@potluck.dishes).to eq([@couscous_salad, @cocktail_meatballs])
  end

  it 'can check amount of dishes' do
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@cocktail_meatballs)

    expect(@potluck.dishes.length).to eq(2)
  end




end
