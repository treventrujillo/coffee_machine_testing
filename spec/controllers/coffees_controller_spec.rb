require 'rails_helper'

RSpec.describe CoffeesController, type: :controller do
  before(:each) do 
    @user = User.create(
      email: 'test@test.com', 
      password: 'password', 
      first_name: 'Test', 
      last_name: 'Tester', 
      age: 27, gender: 'Male'
    )
  end

    let(:valid_attributes) {
      { amount: "16oz", brew: "Mild", ice: true, caffeine: "95mg" }
    }

    let(:invalid_attributes) {
     { amount: "", brew: "", ice: 124152, caffeine: false }
    }
  
  describe "GET #index" do
    it "returns a success response" do
      coffee = @user.coffees.create! valid_attributes
      get :index 
      expect(response).to be_success
    end 
  end

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit
      expect(response).to have_http_status(:success)
    end
  end

end
