require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
      @user = User.create(
        email: "test@test.com", 
        password: "password",
        first_name: "Test", 
        last_name: "Tester",
        gender: "Male",
        age: 18
      )
  end

  describe 'validations' do 
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:gender) }
    it { should validate_presence_of(:age) }
    it { should validate_inclusion_of(:gender).
      in_array(["Male", "Female", "Other"]) }
    it { should validate_numericality_of(:age) }
  end 
end
