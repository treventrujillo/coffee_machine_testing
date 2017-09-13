require 'rails_helper'

RSpec.describe Coffee, type: :model do
  before(:each) do 
    @coffee = Coffee.create(
      caffeine: "95mg",
      amount: "16oz",
      brew: "Mild",
      ice: "False"
    )
  end 

  describe "validations" do 
    it { should validate_presence_of(:caffeine) }
    it { should validate_presence_of(:amount) }
    it { should validate_presence_of(:brew) }
    it { should validate_presence_of(:ice) }
  end 
end
