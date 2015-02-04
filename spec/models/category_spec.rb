require 'rails_helper'

RSpec.describe Category, :type => :model do
  it "has a vaild factory" do
   expect(FactoryGirl.create(:category)).to be_valid
  end

  it "is invalid without a name" do
  expect(FactoryGirl.build(:category, name: nil)).to_not be_valid
  end

end
