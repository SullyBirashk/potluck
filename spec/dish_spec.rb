require './lib/dish'

RSpec.describe Dish do
  before :each do
    @dish = Dish.new("Couscous Salad", :appetizer)
  end

  it 'exist' do
    expect(@dish).to be_instance_of(Dish)
  end

  it 'has a name' do
    expect(@dish.name).to eq('Couscous Salad')
  end


end
