require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "Chef Boyardee") }
  subject(:dessert) {Dessert.new("Muffin", 20, chef)}

  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq("Muffin")
    end

    it "sets a quantity" do
      expect(dessert.quantity).to eq(20)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect{Dessert.new("Muffin", "door", chef)}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      dessert.add_ingredient("Flour")
      expect(dessert.ingredients).to include("Flour")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      ingredients = %w(Flour Milk Sugar Eggs)
      ingredients.each{|ingredient| dessert.add_ingredient(ingredient)}

      expect(dessert.ingredients).to eq(ingredients)
      dessert.mix!
      expect(dessert.ingredients).to_not eq(ingredients)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      current_amount = dessert.quantity
      eaten_amount = 10

      expect(dessert.quantity).to eq(current_amount)
      dessert.eat(10)
      expect(dessert.quantity).to eq(current_amount-eaten_amount)
    end

    it "raises an error if the amount is greater than the quantity" do
      dessert.quantity
      eaten_amount = 10000

      expect{dessert.eat(eaten_amount)}.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Chef Boyardee")
      expect(dessert.serve).to include("Chef Boyardee has made 20 Muffins!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(dessert)
      dessert.make_more
    end
  end
end
