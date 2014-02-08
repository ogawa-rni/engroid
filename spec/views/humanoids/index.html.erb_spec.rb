require 'spec_helper'

describe "humanoids/index" do
  before(:each) do
    assign(:humanoids, [
      stub_model(Humanoid),
      stub_model(Humanoid)
    ])
  end

  it "renders a list of humanoids" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
