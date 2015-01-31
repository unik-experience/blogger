require 'rails_helper'

RSpec.describe Article, :type => :model do
  it "has a valid factory" do
    expect(FactoryGirl.create(:article)).to be_valid
  end

  it "is invalid without title" do
    expect(FactoryGirl.build(:article, title: nil)).to_not be_valid
  end
  
  it "is invalid without a category" do
    expect(FactoryGirl.build(:article, category_id: nil)).to_not be_valid
  end
end
