require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without
blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:brownie) { Dessert.new("brownie", 5, chef) }
  let(:chef) { double("chef", name: "James") }

  describe "#initialize" do
    it "sets a type" do
      expect(brownie.type).to eq("brownie")
    end

    it "sets a quantity" do
      expect(brownie.quantity).to eq(5)
    end

    it "starts ingredients as an empty array" do
      expect(brownie.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("brownie", "lots", chef) }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      brownie.add_ingredient("butter")
      expect(brownie.ingredients).to include("butter")
    end
  end

  describe "#mix!" do
    let(:ingredients) { ["butter", "eggs", "sugar", "chocolate"]}

    it "shuffles the ingredient array" do
      ingredients.each do |ingredient|
        brownie.add_ingredient(ingredient)
      end

      expect(brownie.ingredients).to eq(ingredients)
      brownie.mix!
      expect(brownie.mix!).to_not eq(ingredients)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expect(brownie.eat(3)).to eq(2)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { brownie.eat(7) }.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Chef James the Great Baker")
      expect(brownie.serve).to eq("Chef James the Great Baker has made 5 brownies!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(brownie)
      brownie.make_more
    end
  end
end
