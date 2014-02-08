require 'spec_helper'

describe "humanoids/show" do
  before(:each) do
    @humanoid = assign(:humanoid, stub_model(Humanoid))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
