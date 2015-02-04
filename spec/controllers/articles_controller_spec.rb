require 'rails_helper'

RSpec.describe ArticlesController, :type => :controller do
  describe "GET #index" do
    it "populates an array of articles" do
      article = FactoryGirl.create(:article)
      get :index
      expect(assigns(:articles)).to eq([article])
    end

    it "renders the :index view" do
      get :index
      expect(response.body).to eq("")
    end
  end

  describe "GET #show" do
  end

  describe "GET #new" do
  end

  describe "GET #edit" do
  end

  describe "POST #create" do
  end

  describe "PUT #update" do
  end

  describe "DELETE #destroy" do
  end
end
