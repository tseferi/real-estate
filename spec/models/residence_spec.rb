require 'rails_helper'
require 'rspec/rails'

RSpec.describe Residence, type: :model do

  before do 
    Category.create(title: "Category1")
  end

  context "validations" do
   

   it "should be invalid if the title is too short" do
     residence = Residence.new(        
       title: "Name" * 5, 
       description: "one two three four five six seven eight nine ten" * 4,
       available: true, unit: 1234, rent: 124542, category: Category.new(title: "Category title"))
     expect(residence).to_not be_valid
   end

   it "should be valid if all requirements are met" do
     residence = Residence.new(
       title: 'Name' * 5,
       description: "one two three four five six seven eight nine ten" * 3,
       available: true, unit: 1234, rent: 012345, category: Category.new(title: "category title"))
      expect(residence).to be_valid
   end

   it "is invalid if available is empty" do 
     residence = Residence.new(
       title: 'Name' * 5,
       description: "one two three four five six seven eight nine ten" * 3,
       available: nil, unit: 1234, rent: 012345, category: Category.new(title: "category title"))
      expect(residence).to_not be_valid
   end  

   it "is invalid if the rent is too low" do
     residence = Residence.new(
       title: 'Name' * 5,
       description: "one two three four five six seven eight nine ten" * 3,
       available: true, unit: 1234, rent: 0123, category: Category.new(title: "category title"))
      expect(residence).to_not be_valid
   end

   it "is invalid if the description has fewer than 25 words" do
     residence = Residence.new(
      title: 'Name' * 5,
      description: "one two three four five six seven eight nine ten",
      available: true, unit: 1234, rent: 012345, category: Category.new(title: "category title"))
     expect(residence).to_not be_valid
   end
  end
end
