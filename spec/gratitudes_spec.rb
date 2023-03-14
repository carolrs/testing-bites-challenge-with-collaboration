require 'gratitudes'

RSpec.describe Gratitudes do
  it "initally returns empty gratitude" do
   gratitude = Gratitudes.new
   result = gratitude.format()
   expect(result).to eq "Error, try add something to gratitudes"
  end

  it "returns a message with the added gratitudes" do
    gratitude = Gratitudes.new
    gratitude.add("food")
    gratitude.add("good night of sleep")
    result = gratitude.format()
    expect(result).to eq "Be grateful for: food, good night of sleep"
  end

  it "returns a message with error when number is added as a gratitude" do
    gratitude = Gratitudes.new
    gratitude.add(1)
    result = gratitude.format()
    expect(result).to eq "Please type a string"
  end

end




