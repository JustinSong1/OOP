require_relative "../animals.rb"

describe Animal do
  let(:animal) {Animal.new(legs: 4, color: "brown", height: 4, age: 3, food:["fish", "bug"])}
  context "Getters and Setters" do
    it "Gets the number of legs" do
      expect(animal.legs).to eq(4)
    end
    it "Gets the color" do
      expect(animal.color).to eq("brown")
    end
    it "Sets the color" do
      animal.color = "red"
      expect(animal.color).to eq("red")
    end
    it "Gets the height" do
      expect(animal.height).to eq(4)
    end
    it "Sets the height" do
      animal.height = 5
      expect(animal.height).to eq(5)
    end
    it "Gets the age" do
      expect(animal.age).to eq(3)
    end
    it "Sets the age" do
      animal.age = 4
      expect(animal.age).to eq(4)
    end
    it "Gets the items of food" do
      expect(animal.food).to eq(["fish", "bug"])
    end
  end
end