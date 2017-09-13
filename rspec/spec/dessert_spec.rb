require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "Tucker") }
  let(:brownie) { Dessert.new("brownie", 100, chef) }

  describe "#initialize" do
    it "sets a type" do
    expect(brownie.type).to eq("brownie")
    end

    it "sets a quantity" do
    end

    it "starts ingredients as an empty array" do
    end

    it "raises an argument error when given a non-integer quantity" do
    end

  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
    end
    it "raises an error if the amount is greater than the quantity" do
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
    end
  end
end
