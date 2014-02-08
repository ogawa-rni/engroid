require 'spec_helper'

describe "humanoids/edit" do
  before(:each) do
    @humanoid = assign(:humanoid, stub_model(Humanoid))
  end

  it "renders the edit humanoid form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", humanoid_path(@humanoid), "post" do
    end
  end
end
